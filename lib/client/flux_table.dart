// @dart=2.0

part of influxdb_client_api;

/// Holds metadata about the column the in the table
class FluxColumn {
  String label;
  String dataType;
  bool group;
  dynamic defaultValue;
  num index;

  FluxColumn(
      {this.label, this.dataType, this.group, this.defaultValue, this.index});

  FluxColumn.name(
      this.label, this.dataType, this.group, this.defaultValue, this.index);

  @override
  String toString() {
    return 'FluxColumn: $label, $dataType, $group, $defaultValue, $index';
  }
}

/// Represents metadata of a {@link http://bit.ly/flux-spec#table | flux table}.
class FluxTableMetaData {
  /// Table columns.
  List<FluxColumn> columns = [];
  int tableIndex;

  FluxTableMetaData(this.tableIndex);

// Creates an FluxRecord out of the supplied values with the help of columns .
  FluxRecord toObject(List<dynamic> values) {
    var record = FluxRecord(tableIndex);
    // record.table = tableIndex;

    for (var column in columns) {
      var columnName = column.label;
      var index = column.index + 1;
      ////
      if (index >= values.length) {
        throw FluxCsvParserException('Invalid data $values - columns: $columns');
      }
      var csvValue = values[index];
      record[columnName] = _toValue(csvValue, column);
    }

    return record;
  }

  dynamic _toValue(dynamic val, FluxColumn column) {
    if ('' == val || val == null) {
      var defaultValue = column.defaultValue;
      if (defaultValue == '' || defaultValue == null) {
        return null;
      }
      return _toValue(defaultValue, column);
    }

    var value = serializers[column.dataType](val);
    return value;
  }
}

/// FluxRecord represents row in the Flux query response.
class FluxRecord extends MapMixin<String, dynamic> {
  /// index of table
  final int tableIndex;
  final Map<String, dynamic> _values = {};

  FluxRecord(this.tableIndex);

  @override
  Iterable<String> get keys => _values.keys;

  @override
  void clear() => _values.clear();

  @override
  dynamic remove(Object key) => _values.remove(key);

  @override
  dynamic operator [](Object key) => _values[key];

  @override
  operator []=(String key, dynamic value) => _values[key] = value;

  @override
  String toString() {
    return 'FluxRecord $_values';
  }
}

/// Identity function
T identity<T>(T x) => x;

/// Map of serializers for each datatype in flux query response
Map<String, dynamic> serializers = {
  'boolean': (dynamic x) => x == 'true',
  'unsignedLong': (dynamic x) => x as int,
  'long': (dynamic x) {
    if (x is num) {
      return x.toInt();
    }
    if (x is String) {
      return (x == '' ? null : int.parse(x));
    }
  },
  'double': (dynamic x) {
    if (x is num) {
      return x.toDouble();
    } else if (x is double) {
      return x;
    } else if ('+Inf' == x) {
      return double.infinity;
    } else if ('-Inf' == x) {
      return -double.infinity;
    }
  },
  'string': identity,
  'base64Binary': identity,
  'dateTime:RFC3339': (String x) => (x == '' ? null : x),
};

void serializeDateTimeAsDate() {
  serializers['dateTime:RFC3339'] =
      (String x) => (x == '' ? null : DateTime.parse(x));
}
