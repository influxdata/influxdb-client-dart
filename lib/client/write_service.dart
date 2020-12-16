// @dart=2.0

part of influxdb_client_api;

class WriteService extends DefaultService {
  WriteOptions writeOptions = defaultWriteOptions;
  WriteBatch writeBatch;
  Timer batchTimer;
  bool enableDebug = true;

  ///
  /// Creates [WriteApi] with optional custom [writeOptions]
  ///
  WriteService(InfluxDBClient client, {WriteOptions writeOptions}) : super(client) {
    if (writeOptions != null) {
      this.writeOptions = writeOptions;
    }
    writeBatch = WriteBatch(this.writeOptions, this);
  }

  ///
  /// Write line protocol string [record] into [bucket] and [org]
  ///
  ///
  Future writeLineProtocol(String record,
      {String bucket,
      String org,
      WritePrecision precision = WritePrecision.ns}) async {
    assert(record != null);

    var response = await _writePost(record, bucket ?? influxDB.bucket,
        org ?? influxDB.org, precision ?? writeOptions.precision);

    if (enableDebug) {
      _traceResponse(response);
    }

    if (response.statusCode == 204) {
      // write successful
    } else {
      // throw new InfluxDBError(response.statusCode.toString(), response.body);
      _handleError(response);
    }
  }

  void _traceResponse(Response response) {
    if (influxDB.debugEnabled) {
      print('<< response status: ${response.statusCode}');
      print('<< headers: ${response.headers}');
      if (response.body.isNotEmpty) {
        print('<< body: ${response.body}');
      }
    }
  }

  void batchWrite(dynamic data,
      {String bucket, String org, WritePrecision precision}) {
    precision ??= writeOptions.precision;
    bucket ??= influxDB.bucket;
    org ??= influxDB.org;

    _checkNotNull('precision', precision);
    _checkNotNull('bucket', bucket);
    _checkNotNull('org', org);

    var payload = _payload(data, precision, bucket, org, true);
    writeBatch.push(payload);
  }

  ///
  /// Flushes the buffer
  ///
  Future flush() async {
    await writeBatch.flush();
  }

  ///
  /// Write data ([Point], [String] and collection is supported).
  /// [bucket] specifies the destination bucket for writes
  /// []
  ///
  Future write(dynamic data,
      {String bucket, String org, WritePrecision precision}) async {
    precision ??= writeOptions.precision;
    bucket ??= influxDB.bucket;
    org ??= influxDB.org;

    _checkNotNull('precision', precision);
    _checkNotNull('bucket', bucket);
    _checkNotNull('org', org);

    var payload = _payload(data, precision, bucket, org, false);
    if (payload == null) {
      throw ArgumentError('Unable to write, no data');
    }

    await writeLineProtocol(payload as String,
        bucket: bucket, org: org, precision: precision);
  }

  Future<Response> _writePost(String data, String bucket, String organization,
      WritePrecision precision) async {
    // create uri
    var uri = createUri(influxDB.url, '/api/v2/write',{
      'precision': precisionToString(precision),
      'bucket': bucket,
      'org': organization,
    });
    return await doPost(uri, data);
  }


  dynamic _payload(dynamic data, WritePrecision precision, String bucket,
      String org, bool batching) {
    if (data == null) {
      return null;
    }

    if (data is Point) {
      return _payload(
          data.toLineProtocol(precision), precision, bucket, org, batching);
    }

    if (data is String) {
      if (data.isEmpty) {
        return null;
      }

      if (batching) {
        return BatchItem(BatchItemKey(bucket, org, precision), data);
      } else {
        return data;
      }
    }

    if (data is Iterable) {
      var buffer = StringBuffer();

      var iterator = data.iterator;
      iterator.moveNext();
      var lp = _payload(iterator.current, precision, bucket, org, batching);
      buffer.write(lp);
      while (iterator.moveNext()) {
        buffer.write('\n');
        buffer.write(
            _payload(iterator.current, precision, bucket, org, batching));
      }
      return buffer.toString();
    }
  }

  void _checkNotNull(String parameter, dynamic value) {
    if (value == null) {
      throw ArgumentError(
          'The ${parameter} should be defined as argument or default option in client settings');
    }
  }

  void _handleError(Response response) {
    throw InfluxDBException.fromResponse(response);
  }
}

class BatchItem {
  BatchItemKey key;
  String data;

  BatchItem(this.key, this.data);
}

class BatchItemKey {
  String bucket;
  String org;
  WritePrecision precision;

  BatchItemKey(this.bucket, this.org, this.precision);

  @override
  int get hashCode {
    return bucket.hashCode ^ org.hashCode ^ precision.hashCode; //XOR
  }

  @override
  bool operator ==(Object other) =>
      other is BatchItemKey &&
      other.bucket == bucket &&
      other.org == org &&
      other.precision == precision;
}

class WriteBatch {
  WriteService writeService;
  WriteOptions writeOptions;
  ListQueue<BatchItem> queue = ListQueue();

  WriteBatch(WriteOptions writeOptions, WriteService writeService) {
    this.writeOptions = writeOptions;
    this.writeService = writeService;
  }

  Future<void> push(dynamic payload) async {
    if (payload is Iterable) {
      payload.forEach((element) {
        push(payload);
      });
    }
    if (payload is BatchItem) {
      queue.add(payload);
    }
  }

  Future<void> flush() async {
    var flushBuffer = HashMap<BatchItemKey, List<String>>();
    var counter = 0;

    while (counter < writeOptions.batchSize && !queue.isEmpty) {
      var batchItem = queue.removeFirst();
      var key = batchItem.key;
      if (flushBuffer[key] == null) {
        flushBuffer[key] = [];
      }
      flushBuffer[key].insert(0, batchItem.data);
      counter++;
    }

    if (flushBuffer.isNotEmpty) {
      await _flushBuffer(flushBuffer);
    }

    if (queue.isNotEmpty) {
      await flush();
    }
  }

  Future _flushBuffer(Map<BatchItemKey, List<String>> queue) async {
    for (var entry in queue.entries) {
      await writeService.write(entry.value,
          org: entry.key.org,
          bucket: entry.key.bucket,
          precision: entry.key.precision);
    }
  }

  void close() {
    flush();
    queue.clear();
  }
}
