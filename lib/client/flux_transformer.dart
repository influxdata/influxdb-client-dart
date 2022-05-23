part of influxdb_client_api;

const annotationDefault = '#default';
const annotationGroup = '#group';
const annotationDatatype = '#datatype';
const annotations = [annotationDefault, annotationGroup, annotationDatatype];

/// [FluxQueryException] is thrown when Flux response contains error from server
class FluxQueryException implements Exception {
  String message;
  String reference;

  FluxQueryException(this.message, this.reference);

  @override
  String toString() {
    return 'FluxQueryException $message $reference';
  }
}

/// [FluxCsvParserException] is thrown when flux csv parser failed
class FluxCsvParserException implements Exception {
  String cause;

  FluxCsvParserException(this.cause);
}

/// The configuration for expected amount of metadata response from InfluxDB.
enum FluxResponseMode {
  /// full information about types, default values and groups
  full,

  /// useful for Invokable scripts
  onlyNames
}

/// Parses Flux query result and transforms the CSV stream of List<dynamic>
/// in to Stream<FluxRecord>
class FluxTransformer implements StreamTransformer<List, FluxRecord> {
  late StreamController _controller;

  StreamSubscription? _subscription;

  FluxTableMetaData? table;
  bool? cancelOnError;
  FluxResponseMode responseMode;
  var tableIndex = 0;
  var tableId = -1;
  var startNewTable = false;
  var parsingStateError = false;
  var groups;

  // Original Stream
  late Stream<List> _stream;

  FluxTransformer(
      {bool sync = false,
      this.cancelOnError = true,
      this.responseMode = FluxResponseMode.full}) {
    _controller = StreamController<FluxRecord>(
        onListen: _onListen,
        onCancel: _onCancel,
        onPause: () {
          _subscription!.pause();
        },
        onResume: () {
          _subscription!.resume();
        },
        sync: sync);
  }

  FluxTransformer.broadcast(
      {bool sync = false,
      this.cancelOnError,
      this.responseMode = FluxResponseMode.full}) {
    _controller = StreamController<FluxRecord>.broadcast(
        onListen: _onListen, onCancel: _onCancel, sync: sync);
  }

  void _onListen() {
    _subscription = _stream.listen(onData,
        onError: _controller.addError,
        onDone: _controller.close,
        cancelOnError: cancelOnError);
  }

  void _onCancel() {
    _subscription!.cancel();
    _subscription = null;
  }

  void onData(List csv) {
    // skip empty line
    if (csv.isEmpty || (csv.length == 1 && csv[0] == '')) {
      return;
    }

    // check error found in csv
    if (csv.length > 1 && 'error' == csv[1] && 'reference' == csv[2]) {
      parsingStateError = true;
      return;
    }
    // throw error on next row
    if (parsingStateError) {
      var error = csv[1];
      var reference = csv[2];
      throw FluxQueryException(error, reference);
    }

    // check csv annotations
    var token = csv[0];
    if ((annotations.contains(token) && !startNewTable) ||
        (responseMode == FluxResponseMode.onlyNames && table == null)) {
      startNewTable = true;
      table = FluxTableMetaData(tableIndex);
      tableIndex++;
      tableId = -1;
    } else if (table == null) {
      throw FluxCsvParserException(
          'Unable to parse CSV response. FluxTable definition was not found.');
    }
    if (annotationDatatype == token) {
      _addDataTypes(table!, csv);
    } else if (annotationGroup == token) {
      groups = csv;
    } else if (annotationDefault == token) {
      _addDefaultEmptyValues(table!, csv);
    } else {
      if (startNewTable) {
        if (responseMode == FluxResponseMode.onlyNames &&
            table!.columns.isEmpty) {
          _addDataTypes(table!, csv.map((e) => 'string').toList());
          groups = csv.map((e) => 'false').toList();
        }
        // parse column names
        _addGroups(table!, groups);
        _addColumnNamesAndTags(table!, csv);
        startNewTable = false;
        return;
      }

      // table separator
      if (csv.length == 1) {
        return;
      }

      var currentId = csv[2];
      if (tableId == -1) {
        tableId = currentId;
      }

      if (tableId != currentId) {
        // create new table with previous column headers settings
        var fluxColumns = table!.columns;
        table = FluxTableMetaData(tableIndex);
        table!.columns.addAll(fluxColumns);
        tableIndex = tableIndex + 1;
        tableId = currentId;
      }
      // create flux record from csv line
      var fluxRecord =
          table!.toObject(csv); // parseRecord(tableIndex - 1, table, csv);
      _controller.add(fluxRecord);
    }
  }

  void _addDataTypes(FluxTableMetaData table, List csv) {
    for (var i = 1; i < csv.length; i++) {
      var column = FluxColumn(csv[i], i - 1);
      table.columns.add(column);
    }
  }

  void _addDefaultEmptyValues(FluxTableMetaData table, List csv) {
    var i = 1;
    for (var column in table.columns) {
      column.defaultValue = csv[i];
      i++;
    }
  }

  void _addColumnNamesAndTags(FluxTableMetaData table, List csv) {
    var i = 1;
    for (var column in table.columns) {
      column.label = csv[i];
      i++;
    }
  }

  void _addGroups(FluxTableMetaData table, List? csv) {
    var i = 1;
    for (var column in table.columns) {
      column.group = csv![i] == 'true';
      i++;
    }
  }

  @override
  Stream<FluxRecord> bind(Stream<List> stream) {
    _stream = stream;
    return _controller.stream as Stream<FluxRecord>;
  }

  @override
  StreamTransformer<RS, RT> cast<RS, RT>() {
    return StreamTransformer.castFrom(this);
  }
}
