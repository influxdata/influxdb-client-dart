//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class HealthApi {
  HealthApi(ApiClient apiClient) : apiClient = apiClient;

  final ApiClient apiClient;

  /// Get the health of an instance
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getHealthWithHttpInfo({ String? zapTraceSpan, }) async {
    final path = r'/health';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>['BasicAuthentication', 'QuerystringAuthentication', 'TokenAuthentication'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get the health of an instance
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<HealthCheck> getHealth({ String? zapTraceSpan }) async {
    final response = await getHealthWithHttpInfo( zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HealthCheck',) as HealthCheck;
    
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }
}
