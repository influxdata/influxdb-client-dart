

part of influxdb_client_api;

class WriteService extends DefaultService {
  WriteOptions? writeOptions;
  late _WriteBatch writeBatch;
  Timer? batchTimer;
  bool enableDebug = true;

  ///
  /// Creates [WriteApi] with optional custom [writeOptions]
  ///
  WriteService(InfluxDBClient client, {WriteOptions? writeOptions})
      : super(client) {
    this.writeOptions = writeOptions ?? WriteOptions();
    writeBatch = _WriteBatch(this.writeOptions, this);
  }

  ///
  /// Write line protocol string [record] into [bucket] and [org]
  ///
  Future<void> writeLineProtocol(String record,
      {String? bucket,
      String? org,
      WritePrecision precision = WritePrecision.ns}) async {

    if (writeOptions!.maxRetries > 0) {
      var retry = RetryOptions(
        exponentialBase: writeOptions!.exponentialBase,
        retryInterval: Duration(milliseconds: writeOptions!.retryInterval),
        maxDelay: Duration(milliseconds: writeOptions!.maxRetryDelay),
        maxTime: Duration(milliseconds: writeOptions!.maxRetryTime),
        maxRetries: writeOptions!.maxRetries,
        retryJitter: Duration(milliseconds: writeOptions!.retryJitter),
      );
      return retry.retry(
          () => _write(record, bucket: bucket, org: org, precision: precision),
          retryIf: (e) => retry.isRetryable(e));
    } else {
      await _write(record, bucket: bucket, org: org, precision: precision);
    }
  }

  ///
  /// Write line protocol string [record] into [bucket] and [org]
  ///
  Future<void> _write(String record,
      {String? bucket,
      String? org,
      WritePrecision precision = WritePrecision.ns}) async {

    var response = await _writePost(record, bucket ?? influxDB.bucket,
        org ?? influxDB.org, precision);

    if (response.statusCode == 204) {
      // write successful
      return;
    }
    if (response.statusCode >= HttpStatus.badRequest) {
      _handleError(response);
    } else {
      throw InfluxDBException(response.statusCode, null,
          '204 HTTP response status code expected, but ${response.statusCode} returned');
    }
  }

  ///
  /// Write data ([Point], [String] and collection is supported).
  /// [bucket] specifies the destination bucket for writes
  /// [org] specifies target organization
  /// [precision] specifies write precission
  ///
  void batchWrite(dynamic data,
      {String? bucket, String? org, WritePrecision? precision}) {
    precision ??= writeOptions!.precision;
    bucket ??= influxDB.bucket;
    org ??= influxDB.org;

    _checkNotNull('precision', precision);
    _checkNotNull('bucket', bucket);
    _checkNotNull('org', org);

    var payload = _payload(data, precision, bucket!, org!, true);
    writeBatch.push(payload);
  }

  ///
  /// Flushes the buffer
  ///
  Future flush() async {
    await writeBatch.flush();
  }

  ///
  /// Flushes and Closes writeService
  ///
  Future close() async {
    await writeBatch.close;
  }

  ///
  /// Write data ([Point], [String] and collection is supported).
  /// [bucket] specifies the destination bucket for writes
  /// []
  ///
  Future<void> write(dynamic data,
      {String? bucket, String? org, WritePrecision? precision}) async {
    precision ??= writeOptions!.precision;
    bucket ??= influxDB.bucket;
    org ??= influxDB.org;

    _checkNotNull('precision', precision);
    _checkNotNull('bucket', bucket);
    _checkNotNull('org', org);

    var payload = _payload(data, precision, bucket!, org!, false);

    if (payload == null) {
      throw ArgumentError('Unable to write, no data');
    }

    await writeLineProtocol(payload as String,
        bucket: bucket, org: org, precision: precision);
  }

  Future<BaseResponse> _writePost(String data, String? bucket, String? organization,
      WritePrecision precision) async {
    // create uri
    var uri = _buildUri(influxDB.url!, '/api/v2/write', {
      'precision': precision.value,
      'bucket': bucket,
      'org': organization,
    });
    var headers = {
      'Content-Type': 'text/plain; charset=utf-8'
    };
    _updateParamsForAuth(headers);
    var payload;
    if (writeOptions!.gzip) {
      var stringBytes = utf8.encode(data);
      payload = GZipEncoder().encode(stringBytes);
      headers['Content-Encoding'] = 'gzip';
    } else {
      headers['Content-Encoding'] = 'identity';
      payload = data;
    }
    return await (_invoke(uri, 'POST',
        body: payload, headers: headers, maxRedirects: influxDB.maxRedirects));
  }

  dynamic _payload(dynamic data, WritePrecision precision, String bucket,
      String org, bool batching) {
    if (data == null) {
      return null;
    }
    if (data is Point) {
      var lineProtocol =
          data.toLineProtocol(precision, defaultTags: writeOptions!.defaultTags);
      return _payload(lineProtocol, precision, bucket, org, batching);
    }
    if (data is String) {
      if (data.isEmpty) {
        return null;
      }
      if (batching) {
        return _BatchItem(_BatchItemKey(bucket, org, precision), data);
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

  void _handleError(BaseResponse response) {
    throw InfluxDBException.fromResponse(response);
  }
}

class _BatchItem {
  _BatchItemKey key;
  String data;

  _BatchItem(this.key, this.data);
}

class _BatchItemKey {
  String bucket;
  String org;
  WritePrecision precision;

  _BatchItemKey(this.bucket, this.org, this.precision);

  @override
  int get hashCode {
    return bucket.hashCode ^ org.hashCode ^ precision.hashCode; //XOR
  }

  @override
  bool operator ==(Object other) =>
      other is _BatchItemKey &&
      other.bucket == bucket &&
      other.org == org &&
      other.precision == precision;
}

class _WriteBatch {
  late WriteService writeService;
  WriteOptions? writeOptions;
  ListQueue<_BatchItem> queue = ListQueue();

  _WriteBatch(WriteOptions? writeOptions, WriteService writeService) {
    this.writeOptions = writeOptions;
    this.writeService = writeService;
  }

  Future<void> push(dynamic payload) async {
    if (payload is Iterable) {
      payload.forEach((element) {
        push(payload);
      });
    }
    if (payload is _BatchItem) {
      queue.add(payload);
    }
  }

  Future<void> flush() async {
    var flushBuffer = HashMap<_BatchItemKey, List<String>>();
    var counter = 0;

    while (counter < writeOptions!.batchSize && !queue.isEmpty) {
      var batchItem = queue.removeFirst();
      var key = batchItem.key;
      if (flushBuffer[key] == null) {
        flushBuffer[key] = [];
      }
      flushBuffer[key]!.insert(0, batchItem.data);
      counter++;
    }

    if (flushBuffer.isNotEmpty) {
      await _flushBuffer(flushBuffer);
    }

    if (queue.isNotEmpty) {
      await flush();
    }
  }

  Future _flushBuffer(Map<_BatchItemKey, List<String>> queue) async {
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
