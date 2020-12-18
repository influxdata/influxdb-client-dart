//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class LabelsApi {
  LabelsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteLabelsIDWithHttpInfo(String labelID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (labelID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: labelID');
    }

    final path = '/labels/{labelID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'labelID' + '}', labelID.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<void> deleteLabelsID(String labelID, { String zapTraceSpan }) async {
    final response = await deleteLabelsIDWithHttpInfo(labelID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Get all labels
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
  Future<Response> getLabelsWithHttpInfo({ String zapTraceSpan, String orgID }) async {
    // Verify required params are set.

    final path = '/labels'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orgID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get all labels
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   The organization ID.
  Future<LabelsResponse> getLabels({ String zapTraceSpan, String orgID }) async {
    final response = await getLabelsWithHttpInfo( zapTraceSpan: zapTraceSpan, orgID: orgID );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'LabelsResponse') as LabelsResponse;
    }
    return null;
  }

  /// Get a label
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
  Future<Response> getLabelsIDWithHttpInfo(String labelID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (labelID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: labelID');
    }

    final path = '/labels/{labelID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'labelID' + '}', labelID.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get a label
  ///
  /// Parameters:
  ///
  /// * [String] labelID (required):
  ///   The ID of the label to update.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<LabelResponse> getLabelsID(String labelID, { String zapTraceSpan }) async {
    final response = await getLabelsIDWithHttpInfo(labelID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'LabelResponse') as LabelResponse;
    }
    return null;
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
  Future<Response> patchLabelsIDWithHttpInfo(String labelID, LabelUpdate labelUpdate, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (labelID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: labelID');
    }
    if (labelUpdate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: labelUpdate');
    }

    final path = '/labels/{labelID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'labelID' + '}', labelID.toString());

    Object postBody = labelUpdate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<LabelResponse> patchLabelsID(String labelID, LabelUpdate labelUpdate, { String zapTraceSpan }) async {
    final response = await patchLabelsIDWithHttpInfo(labelID, labelUpdate,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'LabelResponse') as LabelResponse;
    }
    return null;
  }

  /// Create a label
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LabelCreateRequest] labelCreateRequest (required):
  ///   Label to create
  Future<Response> postLabelsWithHttpInfo(LabelCreateRequest labelCreateRequest) async {
    // Verify required params are set.
    if (labelCreateRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: labelCreateRequest');
    }

    final path = '/labels'.replaceAll('{format}', 'json');

    Object postBody = labelCreateRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

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

  /// Create a label
  ///
  /// Parameters:
  ///
  /// * [LabelCreateRequest] labelCreateRequest (required):
  ///   Label to create
  Future<LabelResponse> postLabels(LabelCreateRequest labelCreateRequest) async {
    final response = await postLabelsWithHttpInfo(labelCreateRequest);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'LabelResponse') as LabelResponse;
    }
    return null;
  }
}
