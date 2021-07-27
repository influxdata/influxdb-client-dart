//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class SecretsApi {
  SecretsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteOrgsIDSecretsIDWithHttpInfo(String orgID, String secretID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }
    if (secretID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretID');
    }

    final path = r'/orgs/{orgID}/secrets/{secretID}'
      .replaceAll('{' + 'orgID' + '}', orgID.toString())
      .replaceAll('{' + 'secretID' + '}', secretID.toString());

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
  Future<void> deleteOrgsIDSecretsID(String orgID, String secretID, { String zapTraceSpan }) async {
    final response = await deleteOrgsIDSecretsIDWithHttpInfo(orgID, secretID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> getOrgsIDSecretsWithHttpInfo(String orgID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }

    final path = r'/orgs/{orgID}/secrets'
      .replaceAll('{' + 'orgID' + '}', orgID.toString());

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

  /// List all secret keys for an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<SecretKeysResponse> getOrgsIDSecrets(String orgID, { String zapTraceSpan }) async {
    final response = await getOrgsIDSecretsWithHttpInfo(orgID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'SecretKeysResponse') as SecretKeysResponse;
        }
    return Future<SecretKeysResponse>.value(null);
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
  Future<Response> patchOrgsIDSecretsWithHttpInfo(String orgID, Map<String, String> requestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }
    if (requestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestBody');
    }

    final path = r'/orgs/{orgID}/secrets'
      .replaceAll('{' + 'orgID' + '}', orgID.toString());

    Object postBody = requestBody;

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
  Future<void> patchOrgsIDSecrets(String orgID, Map<String, String> requestBody, { String zapTraceSpan }) async {
    final response = await patchOrgsIDSecretsWithHttpInfo(orgID, requestBody,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> postOrgsIDSecretsWithHttpInfo(String orgID, SecretKeys secretKeys, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }
    if (secretKeys == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: secretKeys');
    }

    final path = r'/orgs/{orgID}/secrets/delete'
      .replaceAll('{' + 'orgID' + '}', orgID.toString());

    Object postBody = secretKeys;

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<void> postOrgsIDSecrets(String orgID, SecretKeys secretKeys, { String zapTraceSpan }) async {
    final response = await postOrgsIDSecretsWithHttpInfo(orgID, secretKeys,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }
}
