//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class VariablesApi {
  VariablesApi(ApiClient apiClient) : apiClient = apiClient;

  final ApiClient apiClient;

  /// Delete a variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteVariablesIDWithHttpInfo(
    String variableID, {
    String? zapTraceSpan,
  }) async {
    final path =
        r'/variables/{variableID}'.replaceAll('{variableID}', variableID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
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

  /// Delete a variable
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteVariablesID(String variableID,
      {String? zapTraceSpan}) async {
    final response = await deleteVariablesIDWithHttpInfo(variableID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a label from a variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [String] labelID (required):
  ///   The label ID to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteVariablesIDLabelsIDWithHttpInfo(
    String variableID,
    String labelID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/variables/{variableID}/labels/{labelID}'
        .replaceAll('{variableID}', variableID)
        .replaceAll('{labelID}', labelID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
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

  /// Delete a label from a variable
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [String] labelID (required):
  ///   The label ID to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteVariablesIDLabelsID(String variableID, String labelID,
      {String? zapTraceSpan}) async {
    final response = await deleteVariablesIDLabelsIDWithHttpInfo(
        variableID, labelID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all variables
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] org:
  ///   The name of the organization.
  ///
  /// * [String] orgID:
  ///   The organization ID.
  Future<Response> getVariablesWithHttpInfo({
    String? zapTraceSpan,
    String? org,
    String? orgID,
  }) async {
    final path = r'/variables';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }
    if (orgID != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
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

  /// List all variables
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] org:
  ///   The name of the organization.
  ///
  /// * [String] orgID:
  ///   The organization ID.
  Future<Variables> getVariables(
      {String? zapTraceSpan, String? org, String? orgID}) async {
    final response = await getVariablesWithHttpInfo(
        zapTraceSpan: zapTraceSpan, org: org, orgID: orgID);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Variables',
      ) as Variables;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Retrieve a variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getVariablesIDWithHttpInfo(
    String variableID, {
    String? zapTraceSpan,
  }) async {
    final path =
        r'/variables/{variableID}'.replaceAll('{variableID}', variableID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
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

  /// Retrieve a variable
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Variable> getVariablesID(String variableID,
      {String? zapTraceSpan}) async {
    final response = await getVariablesIDWithHttpInfo(variableID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Variable',
      ) as Variable;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// List all labels for a variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getVariablesIDLabelsWithHttpInfo(
    String variableID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/variables/{variableID}/labels'
        .replaceAll('{variableID}', variableID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
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

  /// List all labels for a variable
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<LabelsResponse> getVariablesIDLabels(String variableID,
      {String? zapTraceSpan}) async {
    final response = await getVariablesIDLabelsWithHttpInfo(variableID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'LabelsResponse',
      ) as LabelsResponse;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Update a variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [Variable] variable (required):
  ///   Variable update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> patchVariablesIDWithHttpInfo(
    String variableID,
    Variable variable, {
    String? zapTraceSpan,
  }) async {
    final path =
        r'/variables/{variableID}'.replaceAll('{variableID}', variableID);

    // ignore: prefer_final_locals
    Object? postBody = variable;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
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

  /// Update a variable
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [Variable] variable (required):
  ///   Variable update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Variable> patchVariablesID(String variableID, Variable variable,
      {String? zapTraceSpan}) async {
    final response = await patchVariablesIDWithHttpInfo(variableID, variable,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Variable',
      ) as Variable;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Create a variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Variable] variable (required):
  ///   Variable to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postVariablesWithHttpInfo(
    Variable variable, {
    String? zapTraceSpan,
  }) async {
    final path = r'/variables';

    // ignore: prefer_final_locals
    Object? postBody = variable;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
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

  /// Create a variable
  ///
  /// Parameters:
  ///
  /// * [Variable] variable (required):
  ///   Variable to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Variable> postVariables(Variable variable,
      {String? zapTraceSpan}) async {
    final response =
        await postVariablesWithHttpInfo(variable, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Variable',
      ) as Variable;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Add a label to a variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [LabelMapping] labelMapping (required):
  ///   Label to add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postVariablesIDLabelsWithHttpInfo(
    String variableID,
    LabelMapping labelMapping, {
    String? zapTraceSpan,
  }) async {
    final path = r'/variables/{variableID}/labels'
        .replaceAll('{variableID}', variableID);

    // ignore: prefer_final_locals
    Object? postBody = labelMapping;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
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

  /// Add a label to a variable
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [LabelMapping] labelMapping (required):
  ///   Label to add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<LabelResponse> postVariablesIDLabels(
      String variableID, LabelMapping labelMapping,
      {String? zapTraceSpan}) async {
    final response = await postVariablesIDLabelsWithHttpInfo(
        variableID, labelMapping,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'LabelResponse',
      ) as LabelResponse;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Replace a variable
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [Variable] variable (required):
  ///   Variable to replace
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> putVariablesIDWithHttpInfo(
    String variableID,
    Variable variable, {
    String? zapTraceSpan,
  }) async {
    final path =
        r'/variables/{variableID}'.replaceAll('{variableID}', variableID);

    // ignore: prefer_final_locals
    Object? postBody = variable;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Replace a variable
  ///
  /// Parameters:
  ///
  /// * [String] variableID (required):
  ///   The variable ID.
  ///
  /// * [Variable] variable (required):
  ///   Variable to replace
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Variable> putVariablesID(String variableID, Variable variable,
      {String? zapTraceSpan}) async {
    final response = await putVariablesIDWithHttpInfo(variableID, variable,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Variable',
      ) as Variable;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }
}
