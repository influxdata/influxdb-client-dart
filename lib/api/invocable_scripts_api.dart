//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class InvocableScriptsApi {
  InvocableScriptsApi(ApiClient apiClient) : apiClient = apiClient;

  final ApiClient apiClient;

  /// Delete a script
  ///
  /// Deletes a script and all associated records.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scriptID (required):
  ///   The ID of the script to delete.
  Future<Response> deleteScriptsIDWithHttpInfo(
    String scriptID,
  ) async {
    final path = r'/scripts/{scriptID}'.replaceAll('{scriptID}', scriptID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['TokenAuthentication'];
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

  /// Delete a script
  ///
  /// Deletes a script and all associated records.
  ///
  /// Parameters:
  ///
  /// * [String] scriptID (required):
  ///   The ID of the script to delete.
  Future<void> deleteScriptsID(String scriptID) async {
    final response = await deleteScriptsIDWithHttpInfo(scriptID);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List scripts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   The number of scripts to return.
  ///
  /// * [int] offset:
  ///   The offset for pagination.
  Future<Response> getScriptsWithHttpInfo({
    int? limit,
    int? offset,
  }) async {
    final path = r'/scripts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (offset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }

    const authNames = <String>['TokenAuthentication'];
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

  /// List scripts
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   The number of scripts to return.
  ///
  /// * [int] offset:
  ///   The offset for pagination.
  Future<Scripts> getScripts({int? limit, int? offset}) async {
    final response = await getScriptsWithHttpInfo(limit: limit, offset: offset);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Scripts',
      ) as Scripts;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Retrieve a script
  ///
  /// Uses script ID to retrieve details of an invocable script.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scriptID (required):
  ///   The script ID.
  Future<Response> getScriptsIDWithHttpInfo(
    String scriptID,
  ) async {
    final path = r'/scripts/{scriptID}'.replaceAll('{scriptID}', scriptID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['TokenAuthentication'];
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

  /// Retrieve a script
  ///
  /// Uses script ID to retrieve details of an invocable script.
  ///
  /// Parameters:
  ///
  /// * [String] scriptID (required):
  ///   The script ID.
  Future<Script> getScriptsID(String scriptID) async {
    final response = await getScriptsIDWithHttpInfo(scriptID);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Script',
      ) as Script;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Update a script
  ///
  /// Updates properties (`name`, `description`, and `script`) of an invocable script.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scriptID (required):
  ///   The script ID.
  ///
  /// * [ScriptUpdateRequest] scriptUpdateRequest (required):
  ///   Script update to apply
  Future<Response> patchScriptsIDWithHttpInfo(
    String scriptID,
    ScriptUpdateRequest scriptUpdateRequest,
  ) async {
    final path = r'/scripts/{scriptID}'.replaceAll('{scriptID}', scriptID);

    // ignore: prefer_final_locals
    Object? postBody = scriptUpdateRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['TokenAuthentication'];
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

  /// Update a script
  ///
  /// Updates properties (`name`, `description`, and `script`) of an invocable script.
  ///
  /// Parameters:
  ///
  /// * [String] scriptID (required):
  ///   The script ID.
  ///
  /// * [ScriptUpdateRequest] scriptUpdateRequest (required):
  ///   Script update to apply
  Future<Script> patchScriptsID(
      String scriptID, ScriptUpdateRequest scriptUpdateRequest) async {
    final response =
        await patchScriptsIDWithHttpInfo(scriptID, scriptUpdateRequest);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Script',
      ) as Script;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Create a script
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ScriptCreateRequest] scriptCreateRequest (required):
  ///   The script to create.
  Future<Response> postScriptsWithHttpInfo(
    ScriptCreateRequest scriptCreateRequest,
  ) async {
    final path = r'/scripts';

    // ignore: prefer_final_locals
    Object? postBody = scriptCreateRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['TokenAuthentication'];
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

  /// Create a script
  ///
  /// Parameters:
  ///
  /// * [ScriptCreateRequest] scriptCreateRequest (required):
  ///   The script to create.
  Future<Script> postScripts(ScriptCreateRequest scriptCreateRequest) async {
    final response = await postScriptsWithHttpInfo(scriptCreateRequest);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Script',
      ) as Script;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Invoke a script
  ///
  /// Invokes a script and substitutes `params` keys referenced in the script with `params` key-values sent in the request body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scriptID (required):
  ///
  /// * [ScriptInvocationParams] scriptInvocationParams:
  Future<Response> postScriptsIDInvokeWithHttpInfo(
    String scriptID, {
    ScriptInvocationParams? scriptInvocationParams,
  }) async {
    final path =
        r'/scripts/{scriptID}/invoke'.replaceAll('{scriptID}', scriptID);

    // ignore: prefer_final_locals
    Object? postBody = scriptInvocationParams;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['TokenAuthentication'];
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

  /// Invoke a script
  ///
  /// Invokes a script and substitutes `params` keys referenced in the script with `params` key-values sent in the request body.
  ///
  /// Parameters:
  ///
  /// * [String] scriptID (required):
  ///
  /// * [ScriptInvocationParams] scriptInvocationParams:
  Future<String> postScriptsIDInvoke(String scriptID,
      {ScriptInvocationParams? scriptInvocationParams}) async {
    final response = await postScriptsIDInvokeWithHttpInfo(scriptID,
        scriptInvocationParams: scriptInvocationParams);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'String',
      ) as String;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }
}
