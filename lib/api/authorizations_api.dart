//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class AuthorizationsApi {
  AuthorizationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete an authorization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] authID (required):
  ///   The ID of the authorization to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteAuthorizationsIDWithHttpInfo(String authID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (authID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: authID');
    }

    final path = '/authorizations/{authID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'authID' + '}', authID.toString());

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

  /// Delete an authorization
  ///
  /// Parameters:
  ///
  /// * [String] authID (required):
  ///   The ID of the authorization to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteAuthorizationsID(String authID, { String zapTraceSpan }) async {
    final response = await deleteAuthorizationsIDWithHttpInfo(authID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// List all authorizations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] userID:
  ///   Only show authorizations that belong to a user ID.
  ///
  /// * [String] user:
  ///   Only show authorizations that belong to a user name.
  ///
  /// * [String] orgID:
  ///   Only show authorizations that belong to an organization ID.
  ///
  /// * [String] org:
  ///   Only show authorizations that belong to a organization name.
  Future<Response> getAuthorizationsWithHttpInfo({ String zapTraceSpan, String userID, String user, String orgID, String org }) async {
    // Verify required params are set.

    final path = '/authorizations'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'userID', userID));
    }
    if (user != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'user', user));
    }
    if (orgID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
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

  /// List all authorizations
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] userID:
  ///   Only show authorizations that belong to a user ID.
  ///
  /// * [String] user:
  ///   Only show authorizations that belong to a user name.
  ///
  /// * [String] orgID:
  ///   Only show authorizations that belong to an organization ID.
  ///
  /// * [String] org:
  ///   Only show authorizations that belong to a organization name.
  Future<Authorizations> getAuthorizations({ String zapTraceSpan, String userID, String user, String orgID, String org }) async {
    final response = await getAuthorizationsWithHttpInfo( zapTraceSpan: zapTraceSpan, userID: userID, user: user, orgID: orgID, org: org );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Authorizations') as Authorizations;
    }
    return null;
  }

  /// Retrieve an authorization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] authID (required):
  ///   The ID of the authorization to get.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getAuthorizationsIDWithHttpInfo(String authID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (authID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: authID');
    }

    final path = '/authorizations/{authID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'authID' + '}', authID.toString());

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

  /// Retrieve an authorization
  ///
  /// Parameters:
  ///
  /// * [String] authID (required):
  ///   The ID of the authorization to get.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Authorization> getAuthorizationsID(String authID, { String zapTraceSpan }) async {
    final response = await getAuthorizationsIDWithHttpInfo(authID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Authorization') as Authorization;
    }
    return null;
  }

  /// Update an authorization to be active or inactive
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] authID (required):
  ///   The ID of the authorization to update.
  ///
  /// * [AuthorizationUpdateRequest] authorizationUpdateRequest (required):
  ///   Authorization to update
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> patchAuthorizationsIDWithHttpInfo(String authID, AuthorizationUpdateRequest authorizationUpdateRequest, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (authID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: authID');
    }
    if (authorizationUpdateRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: authorizationUpdateRequest');
    }

    final path = '/authorizations/{authID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'authID' + '}', authID.toString());

    Object postBody = authorizationUpdateRequest;

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

  /// Update an authorization to be active or inactive
  ///
  /// Parameters:
  ///
  /// * [String] authID (required):
  ///   The ID of the authorization to update.
  ///
  /// * [AuthorizationUpdateRequest] authorizationUpdateRequest (required):
  ///   Authorization to update
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Authorization> patchAuthorizationsID(String authID, AuthorizationUpdateRequest authorizationUpdateRequest, { String zapTraceSpan }) async {
    final response = await patchAuthorizationsIDWithHttpInfo(authID, authorizationUpdateRequest,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Authorization') as Authorization;
    }
    return null;
  }

  /// Create an authorization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Authorization] authorization (required):
  ///   Authorization to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postAuthorizationsWithHttpInfo(Authorization authorization, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (authorization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: authorization');
    }

    final path = '/authorizations'.replaceAll('{format}', 'json');

    Object postBody = authorization;

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

  /// Create an authorization
  ///
  /// Parameters:
  ///
  /// * [Authorization] authorization (required):
  ///   Authorization to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Authorization> postAuthorizations(Authorization authorization, { String zapTraceSpan }) async {
    final response = await postAuthorizationsWithHttpInfo(authorization,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Authorization') as Authorization;
    }
    return null;
  }
}
