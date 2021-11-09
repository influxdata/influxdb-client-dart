//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class BucketsApi {
  BucketsApi(ApiClient apiClient) : apiClient = apiClient;

  final ApiClient apiClient;

  /// Delete a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The ID of the bucket to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteBucketsIDWithHttpInfo(
    String bucketID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/buckets/{bucketID}'.replaceAll('{bucketID}', bucketID);

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

  /// Delete a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The ID of the bucket to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteBucketsID(String bucketID, {String? zapTraceSpan}) async {
    final response =
        await deleteBucketsIDWithHttpInfo(bucketID, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a label from a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] labelID (required):
  ///   The ID of the label to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteBucketsIDLabelsIDWithHttpInfo(
    String bucketID,
    String labelID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/buckets/{bucketID}/labels/{labelID}'
        .replaceAll('{bucketID}', bucketID)
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

  /// Delete a label from a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] labelID (required):
  ///   The ID of the label to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteBucketsIDLabelsID(String bucketID, String labelID,
      {String? zapTraceSpan}) async {
    final response = await deleteBucketsIDLabelsIDWithHttpInfo(
        bucketID, labelID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove a member from a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the member to remove.
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteBucketsIDMembersIDWithHttpInfo(
    String userID,
    String bucketID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/buckets/{bucketID}/members/{userID}'
        .replaceAll('{userID}', userID)
        .replaceAll('{bucketID}', bucketID);

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

  /// Remove a member from a bucket
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the member to remove.
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteBucketsIDMembersID(String userID, String bucketID,
      {String? zapTraceSpan}) async {
    final response = await deleteBucketsIDMembersIDWithHttpInfo(
        userID, bucketID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove an owner from a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the owner to remove.
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteBucketsIDOwnersIDWithHttpInfo(
    String userID,
    String bucketID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/buckets/{bucketID}/owners/{userID}'
        .replaceAll('{userID}', userID)
        .replaceAll('{bucketID}', bucketID);

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

  /// Remove an owner from a bucket
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the owner to remove.
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteBucketsIDOwnersID(String userID, String bucketID,
      {String? zapTraceSpan}) async {
    final response = await deleteBucketsIDOwnersIDWithHttpInfo(userID, bucketID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all buckets
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
  /// * [String] org:
  ///   The name of the organization.
  ///
  /// * [String] orgID:
  ///   The organization ID.
  ///
  /// * [String] name:
  ///   Only returns buckets with a specific name.
  ///
  /// * [String] id:
  ///   Only returns buckets with a specific ID.
  Future<Response> getBucketsWithHttpInfo({
    String? zapTraceSpan,
    int? offset,
    int? limit,
    String? after,
    String? org,
    String? orgID,
    String? name,
    String? id,
  }) async {
    final path = r'/buckets';

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
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'after', after));
    }
    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }
    if (orgID != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
    if (name != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'name', name));
    }
    if (id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'id', id));
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

  /// List all buckets
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
  /// * [String] org:
  ///   The name of the organization.
  ///
  /// * [String] orgID:
  ///   The organization ID.
  ///
  /// * [String] name:
  ///   Only returns buckets with a specific name.
  ///
  /// * [String] id:
  ///   Only returns buckets with a specific ID.
  Future<Buckets> getBuckets(
      {String? zapTraceSpan,
      int? offset,
      int? limit,
      String? after,
      String? org,
      String? orgID,
      String? name,
      String? id}) async {
    final response = await getBucketsWithHttpInfo(
        zapTraceSpan: zapTraceSpan,
        offset: offset,
        limit: limit,
        after: after,
        org: org,
        orgID: orgID,
        name: name,
        id: id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Buckets',
      ) as Buckets;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Retrieve a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getBucketsIDWithHttpInfo(
    String bucketID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/buckets/{bucketID}'.replaceAll('{bucketID}', bucketID);

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

  /// Retrieve a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Bucket> getBucketsID(String bucketID, {String? zapTraceSpan}) async {
    final response =
        await getBucketsIDWithHttpInfo(bucketID, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Bucket',
      ) as Bucket;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// List all labels for a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getBucketsIDLabelsWithHttpInfo(
    String bucketID, {
    String? zapTraceSpan,
  }) async {
    final path =
        r'/buckets/{bucketID}/labels'.replaceAll('{bucketID}', bucketID);

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

  /// List all labels for a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<LabelsResponse> getBucketsIDLabels(String bucketID,
      {String? zapTraceSpan}) async {
    final response = await getBucketsIDLabelsWithHttpInfo(bucketID,
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

  /// List all users with member privileges for a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getBucketsIDMembersWithHttpInfo(
    String bucketID, {
    String? zapTraceSpan,
  }) async {
    final path =
        r'/buckets/{bucketID}/members'.replaceAll('{bucketID}', bucketID);

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

  /// List all users with member privileges for a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMembers> getBucketsIDMembers(String bucketID,
      {String? zapTraceSpan}) async {
    final response = await getBucketsIDMembersWithHttpInfo(bucketID,
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
        'ResourceMembers',
      ) as ResourceMembers;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// List all owners of a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getBucketsIDOwnersWithHttpInfo(
    String bucketID, {
    String? zapTraceSpan,
  }) async {
    final path =
        r'/buckets/{bucketID}/owners'.replaceAll('{bucketID}', bucketID);

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

  /// List all owners of a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwners> getBucketsIDOwners(String bucketID,
      {String? zapTraceSpan}) async {
    final response = await getBucketsIDOwnersWithHttpInfo(bucketID,
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
        'ResourceOwners',
      ) as ResourceOwners;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Get buckets in a source
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sourceID (required):
  ///   The source ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] org:
  ///   The name of the organization.
  Future<Response> getSourcesIDBucketsWithHttpInfo(
    String sourceID, {
    String? zapTraceSpan,
    String? org,
  }) async {
    final path =
        r'/sources/{sourceID}/buckets'.replaceAll('{sourceID}', sourceID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
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

  /// Get buckets in a source
  ///
  /// Parameters:
  ///
  /// * [String] sourceID (required):
  ///   The source ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] org:
  ///   The name of the organization.
  Future<Buckets> getSourcesIDBuckets(String sourceID,
      {String? zapTraceSpan, String? org}) async {
    final response = await getSourcesIDBucketsWithHttpInfo(sourceID,
        zapTraceSpan: zapTraceSpan, org: org);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Buckets',
      ) as Buckets;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Update a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [PatchBucketRequest] patchBucketRequest (required):
  ///   Bucket update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> patchBucketsIDWithHttpInfo(
    String bucketID,
    PatchBucketRequest patchBucketRequest, {
    String? zapTraceSpan,
  }) async {
    final path = r'/buckets/{bucketID}'.replaceAll('{bucketID}', bucketID);

    // ignore: prefer_final_locals
    Object? postBody = patchBucketRequest;

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

  /// Update a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [PatchBucketRequest] patchBucketRequest (required):
  ///   Bucket update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Bucket> patchBucketsID(
      String bucketID, PatchBucketRequest patchBucketRequest,
      {String? zapTraceSpan}) async {
    final response = await patchBucketsIDWithHttpInfo(
        bucketID, patchBucketRequest,
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
        'Bucket',
      ) as Bucket;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Create a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PostBucketRequest] postBucketRequest (required):
  ///   Bucket to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postBucketsWithHttpInfo(
    PostBucketRequest postBucketRequest, {
    String? zapTraceSpan,
  }) async {
    final path = r'/buckets';

    // ignore: prefer_final_locals
    Object? postBody = postBucketRequest;

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

  /// Create a bucket
  ///
  /// Parameters:
  ///
  /// * [PostBucketRequest] postBucketRequest (required):
  ///   Bucket to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Bucket> postBuckets(PostBucketRequest postBucketRequest,
      {String? zapTraceSpan}) async {
    final response = await postBucketsWithHttpInfo(postBucketRequest,
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
        'Bucket',
      ) as Bucket;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Add a label to a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [LabelMapping] labelMapping (required):
  ///   Label to add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postBucketsIDLabelsWithHttpInfo(
    String bucketID,
    LabelMapping labelMapping, {
    String? zapTraceSpan,
  }) async {
    final path =
        r'/buckets/{bucketID}/labels'.replaceAll('{bucketID}', bucketID);

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

  /// Add a label to a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [LabelMapping] labelMapping (required):
  ///   Label to add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<LabelResponse> postBucketsIDLabels(
      String bucketID, LabelMapping labelMapping,
      {String? zapTraceSpan}) async {
    final response = await postBucketsIDLabelsWithHttpInfo(
        bucketID, labelMapping,
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

  /// Add a member to a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postBucketsIDMembersWithHttpInfo(
    String bucketID,
    AddResourceMemberRequestBody addResourceMemberRequestBody, {
    String? zapTraceSpan,
  }) async {
    final path =
        r'/buckets/{bucketID}/members'.replaceAll('{bucketID}', bucketID);

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

  /// Add a member to a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMember> postBucketsIDMembers(String bucketID,
      AddResourceMemberRequestBody addResourceMemberRequestBody,
      {String? zapTraceSpan}) async {
    final response = await postBucketsIDMembersWithHttpInfo(
        bucketID, addResourceMemberRequestBody,
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

  /// Add an owner to a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postBucketsIDOwnersWithHttpInfo(
    String bucketID,
    AddResourceMemberRequestBody addResourceMemberRequestBody, {
    String? zapTraceSpan,
  }) async {
    final path =
        r'/buckets/{bucketID}/owners'.replaceAll('{bucketID}', bucketID);

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

  /// Add an owner to a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwner> postBucketsIDOwners(String bucketID,
      AddResourceMemberRequestBody addResourceMemberRequestBody,
      {String? zapTraceSpan}) async {
    final response = await postBucketsIDOwnersWithHttpInfo(
        bucketID, addResourceMemberRequestBody,
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
