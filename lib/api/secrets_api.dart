//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class SecretsApi {
  SecretsApi(this.apiClient);

  final ApiClient apiClient;

  /// Delete a secret from an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] secretID (required):
  ///   The secret ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteOrgsIDSecretsIDWithHttpInfo(
    String orgID,
    String secretID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}/secrets/{secretID}'
        .replaceAll('{orgID}', orgID)
        .replaceAll('{secretID}', secretID);

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

  /// Delete a secret from an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] secretID (required):
  ///   The secret ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteOrgsIDSecretsID(String orgID, String secretID,
      {String? zapTraceSpan}) async {
    final response = await deleteOrgsIDSecretsIDWithHttpInfo(orgID, secretID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all secret keys for an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getOrgsIDSecretsWithHttpInfo(
    String orgID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}/secrets'.replaceAll('{orgID}', orgID);

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

  /// List all secret keys for an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<SecretKeysResponse> getOrgsIDSecrets(String orgID,
      {String? zapTraceSpan}) async {
    final response =
        await getOrgsIDSecretsWithHttpInfo(orgID, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'SecretKeysResponse',
      ) as SecretKeysResponse;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Update secrets in an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [Map<String, String>] requestBody (required):
  ///   Secret key value pairs to update/add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> patchOrgsIDSecretsWithHttpInfo(
    String orgID,
    Map<String, String> requestBody, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}/secrets'.replaceAll('{orgID}', orgID);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Update secrets in an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [Map<String, String>] requestBody (required):
  ///   Secret key value pairs to update/add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> patchOrgsIDSecrets(String orgID, Map<String, String> requestBody,
      {String? zapTraceSpan}) async {
    final response = await patchOrgsIDSecretsWithHttpInfo(orgID, requestBody,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete secrets from an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [SecretKeys] secretKeys (required):
  ///   Secret key to delete
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postOrgsIDSecretsWithHttpInfo(
    String orgID,
    SecretKeys secretKeys, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}/secrets/delete'.replaceAll('{orgID}', orgID);

    // ignore: prefer_final_locals
    Object? postBody = secretKeys;

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

  /// Delete secrets from an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [SecretKeys] secretKeys (required):
  ///   Secret key to delete
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> postOrgsIDSecrets(String orgID, SecretKeys secretKeys,
      {String? zapTraceSpan}) async {
    final response = await postOrgsIDSecretsWithHttpInfo(orgID, secretKeys,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
