// @dart=2.0

part of influxdb_client_api;



/// Option for the communication with InfluxDB server.
class ConnectionOptions {
  /// base URL
  String url;

  /// authentication token
  String token;

  /// socket timeout
  num timeout;

  /// extra options for the transport layer
  Map<String, dynamic> transportOptions;

  ConnectionOptions(
      {this.url, this.token, this.timeout, this.transportOptions});
}

/// default connection options */
ConnectionOptions DEFAULT_ConnectionOptions = ConnectionOptions(
    url: null, token: null, timeout: 10000, transportOptions: null);

/// Options used by [WriteApi] .
class WriteOptions {
  /// max number of records to send in a batch
  int batchSize = 1000;

  /// delay between data flushes in milliseconds, at most `batch size` records are sent during flush  */
  int flushInterval = 1000;

  /// default tags, unescaped */
  HashMap<String, String> defaultTags;

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

  WriteOptions(
      {this.batchSize,
      this.flushInterval,
      this.retryJitter,
      this.minRetryDelay,
      this.maxRetryDelay,
      this.exponentialBase,
      this.maxRetries,
      this.maxBufferLines,
      this.defaultTags,
      this.precision});
}

WriteOptions defaultWriteOptions = WriteOptions(
    batchSize: 1000,
    flushInterval: 1000,
    retryJitter: 200,
    maxRetryDelay: 18000,
    minRetryDelay: 5000,
    exponentialBase: 5,
    maxBufferLines: 100000,
    precision: WritePrecision.ns);

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
