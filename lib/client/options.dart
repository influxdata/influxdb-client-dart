// @dart=2.0

part of influxdb_client_api;

/// Options used by [WriteApi] .
class WriteOptions {
  /// max number of records to send in a batch
  int batchSize = 1000;

  /// delay between data flushes in milliseconds, at most `batch size` records are sent during flush  */
  int flushInterval = 1000;

  /// default tags, unescaped */
  Map<String, String> defaultTags;

  /// include random milliseconds when retrying HTTP calls
  int retryJitter;

  /// minimum delay when retrying write (milliseconds)
  int minRetryDelay;

  /// maximum delay when retrying write (milliseconds)
  int maxRetryDelay;

  /// base for the exponential retry delay, the next delay is computed as `minRetryDelay * exponentialBase^(attempts-1) + random(retryJitter)` */
  int exponentialBase;

  /// max number of retries when write fails
  int maxRetries;

  /// the maximum size of retry-buffer (in lines)
  int maxBufferLines;

  /// default precision
  WritePrecision precision;

  /// Enable gzip compression
  bool gzip = false;

  WriteOptions(
      {this.batchSize = 1000,
      this.flushInterval = 1000,
      this.retryJitter = 200,
      this.minRetryDelay = 18000,
      this.maxRetryDelay = 5000,
      this.exponentialBase = 5,
      this.maxRetries = 3,
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
      int minRetryDelay,
      int maxRetryDelay,
      int exponentialBase,
      int maxRetries,
      int maxBufferLines,
      WritePrecision precision,
      bool gzip}) {
    return WriteOptions(
      batchSize: batchSize ?? this.batchSize,
      flushInterval: flushInterval ?? this.flushInterval,
      retryJitter: retryJitter ?? this.retryJitter,
      minRetryDelay: minRetryDelay ?? this.minRetryDelay,
      exponentialBase: exponentialBase ?? this.exponentialBase,
      maxRetries: maxRetries ?? this.maxRetries,
      maxBufferLines: maxBufferLines ?? this.maxBufferLines,
      defaultTags: defaultTags ?? Map.from(this.defaultTags ?? {}),
      precision: precision ?? this.precision,
      gzip: gzip ?? this.gzip,
    );
  }
}

/// Precission for write operations.
/// See [https://v2.docs.influxdata.com/v2.0/api/#operation/PostWrite ]
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
