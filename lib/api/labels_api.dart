//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class LabelsApi {
  LabelsApi(ApiClient apiClient) : apiClient = apiClient;

  final ApiClient apiClient;

  /// Delete a label
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] labelID (required):
  ///   The ID of the label to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteLabelsIDWithHttpInfo(String labelID, { String? zapTraceSpan, }) async {
    final path = r'/labels/{labelID}'
      .replaceAll('{labelID}', labelID);

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Delete a label
  ///
  /// Parameters:
  ///
  /// * [String] labelID (required):
  ///   The ID of the label to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteLabelsID(String labelID, { String? zapTraceSpan }) async {
    final response = await deleteLabelsIDWithHttpInfo(labelID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all labels
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   The organization ID.
  Future<Response> getLabelsWithHttpInfo({ String? zapTraceSpan, String? orgID, }) async {
    final path = r'/labels';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orgID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }

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

  /// List all labels
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   The organization ID.
  Future<LabelsResponse> getLabels({ String? zapTraceSpan, String? orgID }) async {
    final response = await getLabelsWithHttpInfo( zapTraceSpan: zapTraceSpan, orgID: orgID );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LabelsResponse',) as LabelsResponse;
    
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Retrieve a label
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] labelID (required):
  ///   The ID of the label to update.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getLabelsIDWithHttpInfo(String labelID, { String? zapTraceSpan, }) async {
    final path = r'/labels/{labelID}'
      .replaceAll('{labelID}', labelID);

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

  /// Retrieve a label
  ///
  /// Parameters:
  ///
  /// * [String] labelID (required):
  ///   The ID of the label to update.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<LabelResponse> getLabelsID(String labelID, { String? zapTraceSpan }) async {
    final response = await getLabelsIDWithHttpInfo(labelID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LabelResponse',) as LabelResponse;
    
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Update a label
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] labelID (required):
  ///   The ID of the label to update.
  ///
  /// * [LabelUpdate] labelUpdate (required):
  ///   Label update
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> patchLabelsIDWithHttpInfo(String labelID, LabelUpdate labelUpdate, { String? zapTraceSpan, }) async {
    final path = r'/labels/{labelID}'
      .replaceAll('{labelID}', labelID);

    // ignore: prefer_final_locals
    Object? postBody = labelUpdate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>['BasicAuthentication', 'QuerystringAuthentication', 'TokenAuthentication'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Update a label
  ///
  /// Parameters:
  ///
  /// * [String] labelID (required):
  ///   The ID of the label to update.
  ///
  /// * [LabelUpdate] labelUpdate (required):
  ///   Label update
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<LabelResponse> patchLabelsID(String labelID, LabelUpdate labelUpdate, { String? zapTraceSpan }) async {
    final response = await patchLabelsIDWithHttpInfo(labelID, labelUpdate,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LabelResponse',) as LabelResponse;
    
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Create a label
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LabelCreateRequest] labelCreateRequest (required):
  ///   Label to create
  Future<Response> postLabelsWithHttpInfo(LabelCreateRequest labelCreateRequest,) async {
    final path = r'/labels';

    // ignore: prefer_final_locals
    Object? postBody = labelCreateRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['BasicAuthentication', 'QuerystringAuthentication', 'TokenAuthentication'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Create a label
  ///
  /// Parameters:
  ///
  /// * [LabelCreateRequest] labelCreateRequest (required):
  ///   Label to create
  Future<LabelResponse> postLabels(LabelCreateRequest labelCreateRequest) async {
    final response = await postLabelsWithHttpInfo(labelCreateRequest);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LabelResponse',) as LabelResponse;
    
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }
}
