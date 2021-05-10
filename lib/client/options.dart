// @dart=2.0

part of influxdb_client_api;

/// Options used by [WriteApi] .
class WriteOptions {
  /// max number of records to send in a batch
  final int batchSize;

  /// delay between data flushes in milliseconds, at most `batch size` records are sent during flush  */
  final int flushInterval;

  /// default tags, unescaped */
  final Map<String, String> defaultTags;

  /// include random milliseconds when retrying HTTP calls (default is 200)
  final int retryJitter;

  /// delay when retrying first write (milliseconds, default is 5000)
  final int retryInterval;

  /// maximum delay when retrying write (milliseconds, default is 125000)
  final int maxRetryDelay;

  /// maximum time for retrying write (milliseconds, default is 180000)
  final int maxRetryTime;

  /// base for the exponential retry delay (default is 2)
  final int exponentialBase;

  /// max number of retries when write fails (default is 5)
  final int maxRetries;

  /// the maximum size of retry-buffer (in lines)
  final int maxBufferLines;

  /// default precision
  final WritePrecision precision;

  /// Enable gzip compression
  bool gzip = false;

  WriteOptions(
      {this.batchSize = 1000,
      this.flushInterval = 1000,
      this.retryJitter = 200,
      this.retryInterval = 5000,
      this.maxRetryDelay = 125000,
      this.maxRetryTime = 180000,
      this.exponentialBase = 2,
      this.maxRetries = 5,
      this.maxBufferLines = 100000,
      this.defaultTags,
      this.precision = WritePrecision.ns,
      this.gzip = false});

  /// Create a WriteOptions from current instance with merging attributes.
  WriteOptions merge(
      {int batchSize,
      int flushInterval,
      Map<String, String> defaultTags,
      int retryJitter,
      int retryInterval,
      int maxRetryDelay,
      int maxRetryTime,
      int exponentialBase,
      int maxRetries,
      int maxBufferLines,
      WritePrecision precision,
      bool gzip}) {
    return WriteOptions(
      batchSize: batchSize ?? this.batchSize,
      flushInterval: flushInterval ?? this.flushInterval,
      retryJitter: retryJitter ?? this.retryJitter,
      retryInterval: retryInterval ?? this.retryInterval,
      maxRetryDelay: maxRetryDelay ?? this.maxRetryDelay,
      maxRetryTime: maxRetryTime ?? this.maxRetryTime,
      exponentialBase: exponentialBase ?? this.exponentialBase,
      maxRetries: maxRetries ?? this.maxRetries,
      maxBufferLines: maxBufferLines ?? this.maxBufferLines,
      defaultTags: defaultTags ?? Map.from(this.defaultTags ?? {}),
      precision: precision ?? this.precision,
      gzip: gzip ?? this.gzip,
    );
  }

  RetryOptions toRetryStrategy() {
    return RetryOptions(
        exponentialBase: exponentialBase,
        retryInterval: Duration(milliseconds: retryInterval),
        maxDelay: Duration(milliseconds: maxRetryDelay),
        maxTime: Duration(milliseconds: maxRetryTime),
        maxRetries: maxRetries,
        retryJitter: Duration(milliseconds: retryJitter));
  }
}

/// Precision for write operations.
/// See [https://v2.docs.influxdata.com/v2.0/api/#operation/PostWrite ]
/*
enum WritePrecision {
  /// nanosecond
  ns,

  /// microsecond
  us,

  /// millisecond
  ms,

  /// second
  s
}
*/

/*
String precisionToString(WritePrecision wp) {
  switch (wp) {
    case WritePrecision.ns:
      return 'ns';
    case WritePrecision.us:
      return 'us';
    case WritePrecision.ms:
      return 'ms';
    case WritePrecision.s:
      return 's';
    default:
      return 'ns';
  }
}
 */
