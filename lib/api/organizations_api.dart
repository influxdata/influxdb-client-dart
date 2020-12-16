//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class OrganizationsApi {
  OrganizationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The ID of the organization to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteOrgsIDWithHttpInfo(String orgID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }

    final path = '/orgs/{orgID}'.replaceAll('{format}', 'json')
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The ID of the organization to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteOrgsID(String orgID, { String zapTraceSpan }) async {
    final response = await deleteOrgsIDWithHttpInfo(orgID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Remove a member from an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the member to remove.
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteOrgsIDMembersIDWithHttpInfo(String userID, String orgID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }

    final path = '/orgs/{orgID}/members/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString())
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Remove a member from an organization
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the member to remove.
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteOrgsIDMembersID(String userID, String orgID, { String zapTraceSpan }) async {
    final response = await deleteOrgsIDMembersIDWithHttpInfo(userID, orgID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Remove an owner from an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the owner to remove.
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteOrgsIDOwnersIDWithHttpInfo(String userID, String orgID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }

    final path = '/orgs/{orgID}/owners/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString())
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Remove an owner from an organization
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the owner to remove.
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteOrgsIDOwnersID(String userID, String orgID, { String zapTraceSpan }) async {
    final response = await deleteOrgsIDOwnersIDWithHttpInfo(userID, orgID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// List all organizations
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
  /// * [bool] descending:
  ///
  /// * [String] org:
  ///   Filter organizations to a specific organization name.
  ///
  /// * [String] orgID:
  ///   Filter organizations to a specific organization ID.
  ///
  /// * [String] userID:
  ///   Filter organizations to a specific user ID.
  Future<Response> getOrgsWithHttpInfo({ String zapTraceSpan, int offset, int limit, bool descending, String org, String orgID, String userID }) async {
    // Verify required params are set.

    final path = '/orgs'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (descending != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'descending', descending));
    }
    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }
    if (orgID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
    if (userID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'userID', userID));
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

  /// List all organizations
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
  /// * [bool] descending:
  ///
  /// * [String] org:
  ///   Filter organizations to a specific organization name.
  ///
  /// * [String] orgID:
  ///   Filter organizations to a specific organization ID.
  ///
  /// * [String] userID:
  ///   Filter organizations to a specific user ID.
  Future<Organizations> getOrgs({ String zapTraceSpan, int offset, int limit, bool descending, String org, String orgID, String userID }) async {
    final response = await getOrgsWithHttpInfo( zapTraceSpan: zapTraceSpan, offset: offset, limit: limit, descending: descending, org: org, orgID: orgID, userID: userID );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Organizations') as Organizations;
    }
    return null;
  }

  /// Retrieve an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The ID of the organization to get.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getOrgsIDWithHttpInfo(String orgID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }

    final path = '/orgs/{orgID}'.replaceAll('{format}', 'json')
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

  /// Retrieve an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The ID of the organization to get.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Organization> getOrgsID(String orgID, { String zapTraceSpan }) async {
    final response = await getOrgsIDWithHttpInfo(orgID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Organization') as Organization;
    }
    return null;
  }

  /// List all members of an organization
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
  Future<Response> getOrgsIDMembersWithHttpInfo(String orgID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }

    final path = '/orgs/{orgID}/members'.replaceAll('{format}', 'json')
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

  /// List all members of an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMembers> getOrgsIDMembers(String orgID, { String zapTraceSpan }) async {
    final response = await getOrgsIDMembersWithHttpInfo(orgID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResourceMembers') as ResourceMembers;
    }
    return null;
  }

  /// List all owners of an organization
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
  Future<Response> getOrgsIDOwnersWithHttpInfo(String orgID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }

    final path = '/orgs/{orgID}/owners'.replaceAll('{format}', 'json')
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

  /// List all owners of an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwners> getOrgsIDOwners(String orgID, { String zapTraceSpan }) async {
    final response = await getOrgsIDOwnersWithHttpInfo(orgID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResourceOwners') as ResourceOwners;
    }
    return null;
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

    final path = '/orgs/{orgID}/secrets'.replaceAll('{format}', 'json')
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
    return null;
  }

  /// Update an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The ID of the organization to get.
  ///
  /// * [Organization] organization (required):
  ///   Organization update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> patchOrgsIDWithHttpInfo(String orgID, Organization organization, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = '/orgs/{orgID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'orgID' + '}', orgID.toString());

    Object postBody = organization;

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

  /// Update an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The ID of the organization to get.
  ///
  /// * [Organization] organization (required):
  ///   Organization update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Organization> patchOrgsID(String orgID, Organization organization, { String zapTraceSpan }) async {
    final response = await patchOrgsIDWithHttpInfo(orgID, organization,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Organization') as Organization;
    }
    return null;
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

    final path = '/orgs/{orgID}/secrets'.replaceAll('{format}', 'json')
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

  /// Create an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Organization] organization (required):
  ///   Organization to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postOrgsWithHttpInfo(Organization organization, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (organization == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: organization');
    }

    final path = '/orgs'.replaceAll('{format}', 'json');

    Object postBody = organization;

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

  /// Create an organization
  ///
  /// Parameters:
  ///
  /// * [Organization] organization (required):
  ///   Organization to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Organization> postOrgs(Organization organization, { String zapTraceSpan }) async {
    final response = await postOrgsWithHttpInfo(organization,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Organization') as Organization;
    }
    return null;
  }

  /// Add a member to an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postOrgsIDMembersWithHttpInfo(String orgID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = '/orgs/{orgID}/members'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'orgID' + '}', orgID.toString());

    Object postBody = addResourceMemberRequestBody;

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

  /// Add a member to an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMember> postOrgsIDMembers(String orgID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postOrgsIDMembersWithHttpInfo(orgID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResourceMember') as ResourceMember;
    }
    return null;
  }

  /// Add an owner to an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postOrgsIDOwnersWithHttpInfo(String orgID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (orgID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: orgID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = '/orgs/{orgID}/owners'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'orgID' + '}', orgID.toString());

    Object postBody = addResourceMemberRequestBody;

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

  /// Add an owner to an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwner> postOrgsIDOwners(String orgID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postOrgsIDOwnersWithHttpInfo(orgID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResourceOwner') as ResourceOwner;
    }
    return null;
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

    final path = '/orgs/{orgID}/secrets/delete'.replaceAll('{format}', 'json')
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
