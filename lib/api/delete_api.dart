//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class DeleteApi {
  DeleteApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete time series data from InfluxDB
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeletePredicateRequest] deletePredicateRequest (required):
  ///   Predicate delete request
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
  Future<Response> postDeleteWithHttpInfo(DeletePredicateRequest deletePredicateRequest, { String zapTraceSpan, String org, String bucket, String orgID, String bucketID }) async {
    // Verify required params are set.
    if (deletePredicateRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: deletePredicateRequest');
    }

    final path = r'/delete';

    Object postBody = deletePredicateRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }
    if (bucket != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'bucket', bucket));
    }
    if (orgID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
    if (bucketID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'bucketID', bucketID));
    }

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete time series data from InfluxDB
  ///
  /// Parameters:
  ///
  /// * [DeletePredicateRequest] deletePredicateRequest (required):
  ///   Predicate delete request
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
  Future<void> postDelete(DeletePredicateRequest deletePredicateRequest, { String zapTraceSpan, String org, String bucket, String orgID, String bucketID }) async {
    final response = await postDeleteWithHttpInfo(deletePredicateRequest,  zapTraceSpan: zapTraceSpan, org: org, bucket: bucket, orgID: orgID, bucketID: bucketID );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
