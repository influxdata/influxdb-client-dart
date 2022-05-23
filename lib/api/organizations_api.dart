//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class OrganizationsApi {
  OrganizationsApi(this.apiClient);

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
  Future<Response> deleteOrgsIDWithHttpInfo(
    String orgID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}'.replaceAll('{orgID}', orgID);

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

  /// Delete an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The ID of the organization to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteOrgsID(String orgID, {String? zapTraceSpan}) async {
    final response =
        await deleteOrgsIDWithHttpInfo(orgID, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> deleteOrgsIDMembersIDWithHttpInfo(
    String userID,
    String orgID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}/members/{userID}'
        .replaceAll('{userID}', userID)
        .replaceAll('{orgID}', orgID);

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
  Future<void> deleteOrgsIDMembersID(String userID, String orgID,
      {String? zapTraceSpan}) async {
    final response = await deleteOrgsIDMembersIDWithHttpInfo(userID, orgID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> deleteOrgsIDOwnersIDWithHttpInfo(
    String userID,
    String orgID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}/owners/{userID}'
        .replaceAll('{userID}', userID)
        .replaceAll('{orgID}', orgID);

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
  Future<void> deleteOrgsIDOwnersID(String userID, String orgID,
      {String? zapTraceSpan}) async {
    final response = await deleteOrgsIDOwnersIDWithHttpInfo(userID, orgID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> getOrgsWithHttpInfo({
    String? zapTraceSpan,
    int? offset,
    int? limit,
    bool? descending,
    String? org,
    String? orgID,
    String? userID,
  }) async {
    final path = r'/orgs';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (descending != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'descending', descending));
    }
    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }
    if (orgID != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
    if (userID != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'userID', userID));
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
  Future<Organizations> getOrgs(
      {String? zapTraceSpan,
      int? offset,
      int? limit,
      bool? descending,
      String? org,
      String? orgID,
      String? userID}) async {
    final response = await getOrgsWithHttpInfo(
        zapTraceSpan: zapTraceSpan,
        offset: offset,
        limit: limit,
        descending: descending,
        org: org,
        orgID: orgID,
        userID: userID);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Organizations',
      ) as Organizations;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> getOrgsIDWithHttpInfo(
    String orgID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}'.replaceAll('{orgID}', orgID);

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

  /// Retrieve an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The ID of the organization to get.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Organization> getOrgsID(String orgID, {String? zapTraceSpan}) async {
    final response =
        await getOrgsIDWithHttpInfo(orgID, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Organization',
      ) as Organization;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> getOrgsIDMembersWithHttpInfo(
    String orgID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}/members'.replaceAll('{orgID}', orgID);

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

  /// List all members of an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMembers> getOrgsIDMembers(String orgID,
      {String? zapTraceSpan}) async {
    final response =
        await getOrgsIDMembersWithHttpInfo(orgID, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ResourceMembers',
      ) as ResourceMembers;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> getOrgsIDOwnersWithHttpInfo(
    String orgID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}/owners'.replaceAll('{orgID}', orgID);

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

  /// List all owners of an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The organization ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwners> getOrgsIDOwners(String orgID,
      {String? zapTraceSpan}) async {
    final response =
        await getOrgsIDOwnersWithHttpInfo(orgID, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ResourceOwners',
      ) as ResourceOwners;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  /// * [PatchOrganizationRequest] patchOrganizationRequest (required):
  ///   Organization update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> patchOrgsIDWithHttpInfo(
    String orgID,
    PatchOrganizationRequest patchOrganizationRequest, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}'.replaceAll('{orgID}', orgID);

    // ignore: prefer_final_locals
    Object? postBody = patchOrganizationRequest;

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

  /// Update an organization
  ///
  /// Parameters:
  ///
  /// * [String] orgID (required):
  ///   The ID of the organization to get.
  ///
  /// * [PatchOrganizationRequest] patchOrganizationRequest (required):
  ///   Organization update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Organization> patchOrgsID(
      String orgID, PatchOrganizationRequest patchOrganizationRequest,
      {String? zapTraceSpan}) async {
    final response = await patchOrgsIDWithHttpInfo(
        orgID, patchOrganizationRequest,
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
        'Organization',
      ) as Organization;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Create an organization
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PostOrganizationRequest] postOrganizationRequest (required):
  ///   Organization to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postOrgsWithHttpInfo(
    PostOrganizationRequest postOrganizationRequest, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs';

    // ignore: prefer_final_locals
    Object? postBody = postOrganizationRequest;

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

  /// Create an organization
  ///
  /// Parameters:
  ///
  /// * [PostOrganizationRequest] postOrganizationRequest (required):
  ///   Organization to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Organization> postOrgs(PostOrganizationRequest postOrganizationRequest,
      {String? zapTraceSpan}) async {
    final response = await postOrgsWithHttpInfo(postOrganizationRequest,
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
        'Organization',
      ) as Organization;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> postOrgsIDMembersWithHttpInfo(
    String orgID,
    AddResourceMemberRequestBody addResourceMemberRequestBody, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}/members'.replaceAll('{orgID}', orgID);

    // ignore: prefer_final_locals
    Object? postBody = addResourceMemberRequestBody;

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
  Future<ResourceMember> postOrgsIDMembers(
      String orgID, AddResourceMemberRequestBody addResourceMemberRequestBody,
      {String? zapTraceSpan}) async {
    final response = await postOrgsIDMembersWithHttpInfo(
        orgID, addResourceMemberRequestBody,
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
        'ResourceMember',
      ) as ResourceMember;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> postOrgsIDOwnersWithHttpInfo(
    String orgID,
    AddResourceMemberRequestBody addResourceMemberRequestBody, {
    String? zapTraceSpan,
  }) async {
    final path = r'/orgs/{orgID}/owners'.replaceAll('{orgID}', orgID);

    // ignore: prefer_final_locals
    Object? postBody = addResourceMemberRequestBody;

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
  Future<ResourceOwner> postOrgsIDOwners(
      String orgID, AddResourceMemberRequestBody addResourceMemberRequestBody,
      {String? zapTraceSpan}) async {
    final response = await postOrgsIDOwnersWithHttpInfo(
        orgID, addResourceMemberRequestBody,
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
        'ResourceOwner',
      ) as ResourceOwner;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }
}
