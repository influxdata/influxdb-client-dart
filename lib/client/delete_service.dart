// @dart=2.0

part of influxdb_client_api;

class DeleteService extends DefaultService {
  DeleteApi _service;

  DeleteService(InfluxDBClient client) : super(client) {
    _service = DeleteApi(client.getApiClient());
  }

  /// Delete time series data from InfluxDB
  ///
  /// Parameters:
  ///
  /// * [String] start;
  ///   RFC3339Nano
  ///
  /// * [String] stop;
  ///   RFC3339Nano
  ///
  /// * [String] predicate;
  ///   InfluxQL-like delete statement
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] org:
  ///   Specifies the organization to delete data from.
  ///
  /// * [String] bucket:
  ///   Specifies the bucket to delete data from.
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the resource.
  ///
  /// * [String] bucketID:
  ///   Specifies the bucket ID to delete data from.
  Future<void> delete(
      {@required String start,
        @required String stop,
      String predicate,
      String zapTraceSpan,
      String org,
      String bucket,
      String orgID,
      String bucketID}) async {

    var deletePredicateRequest = DeletePredicateRequest(start: start, stop: stop, predicate: predicate);

    return await _service.postDelete(deletePredicateRequest,
        zapTraceSpan: zapTraceSpan,
        org: org,
        bucket: bucket,
        orgID: orgID,
        bucketID: bucketID);
  }
}
