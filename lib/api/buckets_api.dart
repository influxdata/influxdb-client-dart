//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class BucketsApi {
  BucketsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteBucketsIDWithHttpInfo(String bucketID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }

    final path = r'/buckets/{bucketID}'
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString());

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

  /// Delete a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The ID of the bucket to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteBucketsID(String bucketID, { String zapTraceSpan }) async {
    final response = await deleteBucketsIDWithHttpInfo(bucketID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> deleteBucketsIDLabelsIDWithHttpInfo(String bucketID, String labelID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }
    if (labelID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: labelID');
    }

    final path = r'/buckets/{bucketID}/labels/{labelID}'
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString())
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
  Future<void> deleteBucketsIDLabelsID(String bucketID, String labelID, { String zapTraceSpan }) async {
    final response = await deleteBucketsIDLabelsIDWithHttpInfo(bucketID, labelID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> deleteBucketsIDMembersIDWithHttpInfo(String userID, String bucketID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }

    final path = r'/buckets/{bucketID}/members/{userID}'
      .replaceAll('{' + 'userID' + '}', userID.toString())
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString());

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
  Future<void> deleteBucketsIDMembersID(String userID, String bucketID, { String zapTraceSpan }) async {
    final response = await deleteBucketsIDMembersIDWithHttpInfo(userID, bucketID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> deleteBucketsIDOwnersIDWithHttpInfo(String userID, String bucketID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }

    final path = r'/buckets/{bucketID}/owners/{userID}'
      .replaceAll('{' + 'userID' + '}', userID.toString())
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString());

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
  Future<void> deleteBucketsIDOwnersID(String userID, String bucketID, { String zapTraceSpan }) async {
    final response = await deleteBucketsIDOwnersIDWithHttpInfo(userID, bucketID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> getBucketsWithHttpInfo({ String zapTraceSpan, int offset, int limit, String after, String org, String orgID, String name, String id }) async {
    // Verify required params are set.

    final path = r'/buckets';

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
    if (after != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'after', after));
    }
    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }
    if (orgID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
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
  Future<Buckets> getBuckets({ String zapTraceSpan, int offset, int limit, String after, String org, String orgID, String name, String id }) async {
    final response = await getBucketsWithHttpInfo( zapTraceSpan: zapTraceSpan, offset: offset, limit: limit, after: after, org: org, orgID: orgID, name: name, id: id );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Buckets') as Buckets;
        }
    return Future<Buckets>.value(null);
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
  Future<Response> getBucketsIDWithHttpInfo(String bucketID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }

    final path = r'/buckets/{bucketID}'
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString());

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

  /// Retrieve a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Bucket> getBucketsID(String bucketID, { String zapTraceSpan }) async {
    final response = await getBucketsIDWithHttpInfo(bucketID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Bucket') as Bucket;
        }
    return Future<Bucket>.value(null);
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
  Future<Response> getBucketsIDLabelsWithHttpInfo(String bucketID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }

    final path = r'/buckets/{bucketID}/labels'
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString());

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

  /// List all labels for a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<LabelsResponse> getBucketsIDLabels(String bucketID, { String zapTraceSpan }) async {
    final response = await getBucketsIDLabelsWithHttpInfo(bucketID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'LabelsResponse') as LabelsResponse;
        }
    return Future<LabelsResponse>.value(null);
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
  Future<Response> getBucketsIDMembersWithHttpInfo(String bucketID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }

    final path = r'/buckets/{bucketID}/members'
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString());

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

  /// List all users with member privileges for a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMembers> getBucketsIDMembers(String bucketID, { String zapTraceSpan }) async {
    final response = await getBucketsIDMembersWithHttpInfo(bucketID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResourceMembers') as ResourceMembers;
        }
    return Future<ResourceMembers>.value(null);
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
  Future<Response> getBucketsIDOwnersWithHttpInfo(String bucketID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }

    final path = r'/buckets/{bucketID}/owners'
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString());

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

  /// List all owners of a bucket
  ///
  /// Parameters:
  ///
  /// * [String] bucketID (required):
  ///   The bucket ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwners> getBucketsIDOwners(String bucketID, { String zapTraceSpan }) async {
    final response = await getBucketsIDOwnersWithHttpInfo(bucketID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResourceOwners') as ResourceOwners;
        }
    return Future<ResourceOwners>.value(null);
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
  Future<Response> getSourcesIDBucketsWithHttpInfo(String sourceID, { String zapTraceSpan, String org }) async {
    // Verify required params are set.
    if (sourceID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: sourceID');
    }

    final path = r'/sources/{sourceID}/buckets'
      .replaceAll('{' + 'sourceID' + '}', sourceID.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  Future<Buckets> getSourcesIDBuckets(String sourceID, { String zapTraceSpan, String org }) async {
    final response = await getSourcesIDBucketsWithHttpInfo(sourceID,  zapTraceSpan: zapTraceSpan, org: org );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Buckets') as Buckets;
        }
    return Future<Buckets>.value(null);
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
  Future<Response> patchBucketsIDWithHttpInfo(String bucketID, PatchBucketRequest patchBucketRequest, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }
    if (patchBucketRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: patchBucketRequest');
    }

    final path = r'/buckets/{bucketID}'
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString());

    Object postBody = patchBucketRequest;

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
  Future<Bucket> patchBucketsID(String bucketID, PatchBucketRequest patchBucketRequest, { String zapTraceSpan }) async {
    final response = await patchBucketsIDWithHttpInfo(bucketID, patchBucketRequest,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Bucket') as Bucket;
        }
    return Future<Bucket>.value(null);
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
  Future<Response> postBucketsWithHttpInfo(PostBucketRequest postBucketRequest, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (postBucketRequest == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: postBucketRequest');
    }

    final path = r'/buckets';

    Object postBody = postBucketRequest;

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

  /// Create a bucket
  ///
  /// Parameters:
  ///
  /// * [PostBucketRequest] postBucketRequest (required):
  ///   Bucket to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Bucket> postBuckets(PostBucketRequest postBucketRequest, { String zapTraceSpan }) async {
    final response = await postBucketsWithHttpInfo(postBucketRequest,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Bucket') as Bucket;
        }
    return Future<Bucket>.value(null);
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
  Future<Response> postBucketsIDLabelsWithHttpInfo(String bucketID, LabelMapping labelMapping, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }
    if (labelMapping == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: labelMapping');
    }

    final path = r'/buckets/{bucketID}/labels'
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString());

    Object postBody = labelMapping;

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
  Future<LabelResponse> postBucketsIDLabels(String bucketID, LabelMapping labelMapping, { String zapTraceSpan }) async {
    final response = await postBucketsIDLabelsWithHttpInfo(bucketID, labelMapping,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'LabelResponse') as LabelResponse;
        }
    return Future<LabelResponse>.value(null);
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
  Future<Response> postBucketsIDMembersWithHttpInfo(String bucketID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = r'/buckets/{bucketID}/members'
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString());

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
  Future<ResourceMember> postBucketsIDMembers(String bucketID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postBucketsIDMembersWithHttpInfo(bucketID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResourceMember') as ResourceMember;
        }
    return Future<ResourceMember>.value(null);
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
  Future<Response> postBucketsIDOwnersWithHttpInfo(String bucketID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (bucketID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucketID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = r'/buckets/{bucketID}/owners'
      .replaceAll('{' + 'bucketID' + '}', bucketID.toString());

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
  Future<ResourceOwner> postBucketsIDOwners(String bucketID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postBucketsIDOwnersWithHttpInfo(bucketID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ResourceOwner') as ResourceOwner;
        }
    return Future<ResourceOwner>.value(null);
  }
}
