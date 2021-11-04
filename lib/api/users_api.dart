//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class UsersApi {
  UsersApi(ApiClient apiClient) : apiClient = apiClient;

  final ApiClient apiClient;

  /// Delete a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the user to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteUsersIDWithHttpInfo(String userID, { String? zapTraceSpan, }) async {
    final path = r'/users/{userID}'
      .replaceAll('{userID}', userID);

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

  /// Delete a user
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the user to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteUsersID(String userID, { String? zapTraceSpan }) async {
    final response = await deleteUsersIDWithHttpInfo(userID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Return the feature flags for the currently authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getFlagsWithHttpInfo({ String? zapTraceSpan, }) async {
    final path = r'/flags';

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

  /// Return the feature flags for the currently authenticated user
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Map<String, Object>> getFlags({ String? zapTraceSpan }) async {
    final response = await getFlagsWithHttpInfo( zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Retrieve the currently authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getMeWithHttpInfo({ String? zapTraceSpan, }) async {
    final path = r'/me';

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

  /// Retrieve the currently authenticated user
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<UserResponse> getMe({ String? zapTraceSpan }) async {
    final response = await getMeWithHttpInfo( zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserResponse',) as UserResponse;
    
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// List all users
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [int] offset:
  ///
  /// * [int] limit:
  ///
  /// * [String] after:
  ///   The last resource ID from which to seek from (but not including). This is to be used instead of `offset`. 
  ///
  /// * [String] name:
  ///
  /// * [String] id:
  Future<Response> getUsersWithHttpInfo({ String? zapTraceSpan, int? offset, int? limit, String? after, String? name, String? id, }) async {
    final path = r'/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (after != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'after', after));
    }
    if (name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));
    }
    if (id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'id', id));
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

  /// List all users
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [int] offset:
  ///
  /// * [int] limit:
  ///
  /// * [String] after:
  ///   The last resource ID from which to seek from (but not including). This is to be used instead of `offset`. 
  ///
  /// * [String] name:
  ///
  /// * [String] id:
  Future<Users> getUsers({ String? zapTraceSpan, int? offset, int? limit, String? after, String? name, String? id }) async {
    final response = await getUsersWithHttpInfo( zapTraceSpan: zapTraceSpan, offset: offset, limit: limit, after: after, name: name, id: id );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Users',) as Users;
    
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Retrieve a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The user ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getUsersIDWithHttpInfo(String userID, { String? zapTraceSpan, }) async {
    final path = r'/users/{userID}'
      .replaceAll('{userID}', userID);

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

  /// Retrieve a user
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The user ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<UserResponse> getUsersID(String userID, { String? zapTraceSpan }) async {
    final response = await getUsersIDWithHttpInfo(userID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserResponse',) as UserResponse;
    
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Update a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the user to update.
  ///
  /// * [User] user (required):
  ///   User update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> patchUsersIDWithHttpInfo(String userID, User user, { String? zapTraceSpan, }) async {
    final path = r'/users/{userID}'
      .replaceAll('{userID}', userID);

    // ignore: prefer_final_locals
    Object? postBody = user;

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

  /// Update a user
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the user to update.
  ///
  /// * [User] user (required):
  ///   User update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<UserResponse> patchUsersID(String userID, User user, { String? zapTraceSpan }) async {
    final response = await patchUsersIDWithHttpInfo(userID, user,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserResponse',) as UserResponse;
    
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Create a user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [User] user (required):
  ///   User to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postUsersWithHttpInfo(User user, { String? zapTraceSpan, }) async {
    final path = r'/users';

    // ignore: prefer_final_locals
    Object? postBody = user;

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Create a user
  ///
  /// Parameters:
  ///
  /// * [User] user (required):
  ///   User to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<UserResponse> postUsers(User user, { String? zapTraceSpan }) async {
    final response = await postUsersWithHttpInfo(user,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserResponse',) as UserResponse;
    
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Update a password
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The user ID.
  ///
  /// * [PasswordResetBody] passwordResetBody (required):
  ///   New password
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postUsersIDPasswordWithHttpInfo(String userID, PasswordResetBody passwordResetBody, { String? zapTraceSpan, }) async {
    final path = r'/users/{userID}/password'
      .replaceAll('{userID}', userID);

    // ignore: prefer_final_locals
    Object? postBody = passwordResetBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>['BasicAuthentication'];
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

  /// Update a password
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The user ID.
  ///
  /// * [PasswordResetBody] passwordResetBody (required):
  ///   New password
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> postUsersIDPassword(String userID, PasswordResetBody passwordResetBody, { String? zapTraceSpan }) async {
    final response = await postUsersIDPasswordWithHttpInfo(userID, passwordResetBody,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a password
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PasswordResetBody] passwordResetBody (required):
  ///   New password
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> putMePasswordWithHttpInfo(PasswordResetBody passwordResetBody, { String? zapTraceSpan, }) async {
    final path = r'/me/password';

    // ignore: prefer_final_locals
    Object? postBody = passwordResetBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>['BasicAuthentication'];
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

  /// Update a password
  ///
  /// Parameters:
  ///
  /// * [PasswordResetBody] passwordResetBody (required):
  ///   New password
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> putMePassword(PasswordResetBody passwordResetBody, { String? zapTraceSpan }) async {
    final response = await putMePasswordWithHttpInfo(passwordResetBody,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
