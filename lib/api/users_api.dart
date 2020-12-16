//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class UsersApi {
  UsersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

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

    final path = '/buckets/{bucketID}/members/{userID}'.replaceAll('{format}', 'json')
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

    final path = '/buckets/{bucketID}/owners/{userID}'.replaceAll('{format}', 'json')
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

  /// Remove a member from a dashboard
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the member to remove.
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteDashboardsIDMembersIDWithHttpInfo(String userID, String dashboardID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (dashboardID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dashboardID');
    }

    final path = '/dashboards/{dashboardID}/members/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString())
      .replaceAll('{' + 'dashboardID' + '}', dashboardID.toString());

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

  /// Remove a member from a dashboard
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the member to remove.
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteDashboardsIDMembersID(String userID, String dashboardID, { String zapTraceSpan }) async {
    final response = await deleteDashboardsIDMembersIDWithHttpInfo(userID, dashboardID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Remove an owner from a dashboard
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the owner to remove.
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteDashboardsIDOwnersIDWithHttpInfo(String userID, String dashboardID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (dashboardID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dashboardID');
    }

    final path = '/dashboards/{dashboardID}/owners/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString())
      .replaceAll('{' + 'dashboardID' + '}', dashboardID.toString());

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

  /// Remove an owner from a dashboard
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the owner to remove.
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteDashboardsIDOwnersID(String userID, String dashboardID, { String zapTraceSpan }) async {
    final response = await deleteDashboardsIDOwnersIDWithHttpInfo(userID, dashboardID,  zapTraceSpan: zapTraceSpan );
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

  /// Remove a member from a scraper target
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of member to remove.
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteScrapersIDMembersIDWithHttpInfo(String userID, String scraperTargetID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (scraperTargetID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scraperTargetID');
    }

    final path = '/scrapers/{scraperTargetID}/members/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString())
      .replaceAll('{' + 'scraperTargetID' + '}', scraperTargetID.toString());

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

  /// Remove a member from a scraper target
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of member to remove.
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteScrapersIDMembersID(String userID, String scraperTargetID, { String zapTraceSpan }) async {
    final response = await deleteScrapersIDMembersIDWithHttpInfo(userID, scraperTargetID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Remove an owner from a scraper target
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of owner to remove.
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteScrapersIDOwnersIDWithHttpInfo(String userID, String scraperTargetID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (scraperTargetID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scraperTargetID');
    }

    final path = '/scrapers/{scraperTargetID}/owners/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString())
      .replaceAll('{' + 'scraperTargetID' + '}', scraperTargetID.toString());

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

  /// Remove an owner from a scraper target
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of owner to remove.
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteScrapersIDOwnersID(String userID, String scraperTargetID, { String zapTraceSpan }) async {
    final response = await deleteScrapersIDOwnersIDWithHttpInfo(userID, scraperTargetID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Remove a member from a task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the member to remove.
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteTasksIDMembersIDWithHttpInfo(String userID, String taskID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (taskID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: taskID');
    }

    final path = '/tasks/{taskID}/members/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString())
      .replaceAll('{' + 'taskID' + '}', taskID.toString());

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

  /// Remove a member from a task
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the member to remove.
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteTasksIDMembersID(String userID, String taskID, { String zapTraceSpan }) async {
    final response = await deleteTasksIDMembersIDWithHttpInfo(userID, taskID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Remove an owner from a task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the owner to remove.
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteTasksIDOwnersIDWithHttpInfo(String userID, String taskID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (taskID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: taskID');
    }

    final path = '/tasks/{taskID}/owners/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString())
      .replaceAll('{' + 'taskID' + '}', taskID.toString());

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

  /// Remove an owner from a task
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the owner to remove.
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteTasksIDOwnersID(String userID, String taskID, { String zapTraceSpan }) async {
    final response = await deleteTasksIDOwnersIDWithHttpInfo(userID, taskID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Remove a member from a Telegraf config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the member to remove.
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteTelegrafsIDMembersIDWithHttpInfo(String userID, String telegrafID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (telegrafID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: telegrafID');
    }

    final path = '/telegrafs/{telegrafID}/members/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString())
      .replaceAll('{' + 'telegrafID' + '}', telegrafID.toString());

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

  /// Remove a member from a Telegraf config
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the member to remove.
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteTelegrafsIDMembersID(String userID, String telegrafID, { String zapTraceSpan }) async {
    final response = await deleteTelegrafsIDMembersIDWithHttpInfo(userID, telegrafID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Remove an owner from a Telegraf config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the owner to remove.
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteTelegrafsIDOwnersIDWithHttpInfo(String userID, String telegrafID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (telegrafID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: telegrafID');
    }

    final path = '/telegrafs/{telegrafID}/owners/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString())
      .replaceAll('{' + 'telegrafID' + '}', telegrafID.toString());

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

  /// Remove an owner from a Telegraf config
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the owner to remove.
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteTelegrafsIDOwnersID(String userID, String telegrafID, { String zapTraceSpan }) async {
    final response = await deleteTelegrafsIDOwnersIDWithHttpInfo(userID, telegrafID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

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
  Future<Response> deleteUsersIDWithHttpInfo(String userID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }

    final path = '/users/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString());

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

  /// Delete a user
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The ID of the user to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteUsersID(String userID, { String zapTraceSpan }) async {
    final response = await deleteUsersIDWithHttpInfo(userID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
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

    final path = '/buckets/{bucketID}/members'.replaceAll('{format}', 'json')
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
    return null;
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

    final path = '/buckets/{bucketID}/owners'.replaceAll('{format}', 'json')
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
    return null;
  }

  /// List all dashboard members
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getDashboardsIDMembersWithHttpInfo(String dashboardID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (dashboardID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dashboardID');
    }

    final path = '/dashboards/{dashboardID}/members'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'dashboardID' + '}', dashboardID.toString());

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

  /// List all dashboard members
  ///
  /// Parameters:
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMembers> getDashboardsIDMembers(String dashboardID, { String zapTraceSpan }) async {
    final response = await getDashboardsIDMembersWithHttpInfo(dashboardID,  zapTraceSpan: zapTraceSpan );
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

  /// List all dashboard owners
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getDashboardsIDOwnersWithHttpInfo(String dashboardID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (dashboardID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dashboardID');
    }

    final path = '/dashboards/{dashboardID}/owners'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'dashboardID' + '}', dashboardID.toString());

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

  /// List all dashboard owners
  ///
  /// Parameters:
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwners> getDashboardsIDOwners(String dashboardID, { String zapTraceSpan }) async {
    final response = await getDashboardsIDOwnersWithHttpInfo(dashboardID,  zapTraceSpan: zapTraceSpan );
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

  /// Return the feature flags for the currently authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getFlagsWithHttpInfo({ String zapTraceSpan }) async {
    // Verify required params are set.

    final path = '/flags'.replaceAll('{format}', 'json');

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

  /// Return the feature flags for the currently authenticated user
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Map<String, Object>> getFlags({ String zapTraceSpan }) async {
    final response = await getFlagsWithHttpInfo( zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(apiClient.deserialize(_decodeBodyBytes(response), 'Map<String, Object>'));
    }
    return null;
  }

  /// Return the current authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getMeWithHttpInfo({ String zapTraceSpan }) async {
    // Verify required params are set.

    final path = '/me'.replaceAll('{format}', 'json');

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

  /// Return the current authenticated user
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<User> getMe({ String zapTraceSpan }) async {
    final response = await getMeWithHttpInfo( zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
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

  /// List all users with member privileges for a scraper target
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getScrapersIDMembersWithHttpInfo(String scraperTargetID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (scraperTargetID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scraperTargetID');
    }

    final path = '/scrapers/{scraperTargetID}/members'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'scraperTargetID' + '}', scraperTargetID.toString());

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

  /// List all users with member privileges for a scraper target
  ///
  /// Parameters:
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMembers> getScrapersIDMembers(String scraperTargetID, { String zapTraceSpan }) async {
    final response = await getScrapersIDMembersWithHttpInfo(scraperTargetID,  zapTraceSpan: zapTraceSpan );
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

  /// List all owners of a scraper target
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getScrapersIDOwnersWithHttpInfo(String scraperTargetID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (scraperTargetID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scraperTargetID');
    }

    final path = '/scrapers/{scraperTargetID}/owners'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'scraperTargetID' + '}', scraperTargetID.toString());

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

  /// List all owners of a scraper target
  ///
  /// Parameters:
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwners> getScrapersIDOwners(String scraperTargetID, { String zapTraceSpan }) async {
    final response = await getScrapersIDOwnersWithHttpInfo(scraperTargetID,  zapTraceSpan: zapTraceSpan );
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

  /// List all task members
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getTasksIDMembersWithHttpInfo(String taskID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (taskID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: taskID');
    }

    final path = '/tasks/{taskID}/members'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'taskID' + '}', taskID.toString());

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

  /// List all task members
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMembers> getTasksIDMembers(String taskID, { String zapTraceSpan }) async {
    final response = await getTasksIDMembersWithHttpInfo(taskID,  zapTraceSpan: zapTraceSpan );
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

  /// List all owners of a task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getTasksIDOwnersWithHttpInfo(String taskID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (taskID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: taskID');
    }

    final path = '/tasks/{taskID}/owners'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'taskID' + '}', taskID.toString());

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

  /// List all owners of a task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwners> getTasksIDOwners(String taskID, { String zapTraceSpan }) async {
    final response = await getTasksIDOwnersWithHttpInfo(taskID,  zapTraceSpan: zapTraceSpan );
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

  /// List all users with member privileges for a Telegraf config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getTelegrafsIDMembersWithHttpInfo(String telegrafID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (telegrafID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: telegrafID');
    }

    final path = '/telegrafs/{telegrafID}/members'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'telegrafID' + '}', telegrafID.toString());

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

  /// List all users with member privileges for a Telegraf config
  ///
  /// Parameters:
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMembers> getTelegrafsIDMembers(String telegrafID, { String zapTraceSpan }) async {
    final response = await getTelegrafsIDMembersWithHttpInfo(telegrafID,  zapTraceSpan: zapTraceSpan );
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

  /// List all owners of a Telegraf config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getTelegrafsIDOwnersWithHttpInfo(String telegrafID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (telegrafID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: telegrafID');
    }

    final path = '/telegrafs/{telegrafID}/owners'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'telegrafID' + '}', telegrafID.toString());

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

  /// List all owners of a Telegraf config
  ///
  /// Parameters:
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwners> getTelegrafsIDOwners(String telegrafID, { String zapTraceSpan }) async {
    final response = await getTelegrafsIDOwnersWithHttpInfo(telegrafID,  zapTraceSpan: zapTraceSpan );
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

  /// List all users
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getUsersWithHttpInfo({ String zapTraceSpan }) async {
    // Verify required params are set.

    final path = '/users'.replaceAll('{format}', 'json');

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

  /// List all users
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Users> getUsers({ String zapTraceSpan }) async {
    final response = await getUsersWithHttpInfo( zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Users') as Users;
    }
    return null;
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
  Future<Response> getUsersIDWithHttpInfo(String userID, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }

    final path = '/users/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString());

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

  /// Retrieve a user
  ///
  /// Parameters:
  ///
  /// * [String] userID (required):
  ///   The user ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<User> getUsersID(String userID, { String zapTraceSpan }) async {
    final response = await getUsersIDWithHttpInfo(userID,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    }
    return null;
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
  Future<Response> patchUsersIDWithHttpInfo(String userID, User user, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (user == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: user');
    }

    final path = '/users/{userID}'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString());

    Object postBody = user;

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
  Future<User> patchUsersID(String userID, User user, { String zapTraceSpan }) async {
    final response = await patchUsersIDWithHttpInfo(userID, user,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    }
    return null;
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

    final path = '/buckets/{bucketID}/members'.replaceAll('{format}', 'json')
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
    return null;
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

    final path = '/buckets/{bucketID}/owners'.replaceAll('{format}', 'json')
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
    return null;
  }

  /// Add a member to a dashboard
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postDashboardsIDMembersWithHttpInfo(String dashboardID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (dashboardID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dashboardID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = '/dashboards/{dashboardID}/members'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'dashboardID' + '}', dashboardID.toString());

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

  /// Add a member to a dashboard
  ///
  /// Parameters:
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMember> postDashboardsIDMembers(String dashboardID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postDashboardsIDMembersWithHttpInfo(dashboardID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
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

  /// Add an owner to a dashboard
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postDashboardsIDOwnersWithHttpInfo(String dashboardID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (dashboardID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: dashboardID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = '/dashboards/{dashboardID}/owners'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'dashboardID' + '}', dashboardID.toString());

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

  /// Add an owner to a dashboard
  ///
  /// Parameters:
  ///
  /// * [String] dashboardID (required):
  ///   The dashboard ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwner> postDashboardsIDOwners(String dashboardID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postDashboardsIDOwnersWithHttpInfo(dashboardID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
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

  /// Add a member to a scraper target
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postScrapersIDMembersWithHttpInfo(String scraperTargetID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (scraperTargetID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scraperTargetID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = '/scrapers/{scraperTargetID}/members'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'scraperTargetID' + '}', scraperTargetID.toString());

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

  /// Add a member to a scraper target
  ///
  /// Parameters:
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMember> postScrapersIDMembers(String scraperTargetID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postScrapersIDMembersWithHttpInfo(scraperTargetID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
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

  /// Add an owner to a scraper target
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postScrapersIDOwnersWithHttpInfo(String scraperTargetID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (scraperTargetID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: scraperTargetID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = '/scrapers/{scraperTargetID}/owners'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'scraperTargetID' + '}', scraperTargetID.toString());

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

  /// Add an owner to a scraper target
  ///
  /// Parameters:
  ///
  /// * [String] scraperTargetID (required):
  ///   The scraper target ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwner> postScrapersIDOwners(String scraperTargetID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postScrapersIDOwnersWithHttpInfo(scraperTargetID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
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

  /// Add a member to a task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postTasksIDMembersWithHttpInfo(String taskID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (taskID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: taskID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = '/tasks/{taskID}/members'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'taskID' + '}', taskID.toString());

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

  /// Add a member to a task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMember> postTasksIDMembers(String taskID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postTasksIDMembersWithHttpInfo(taskID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
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

  /// Add an owner to a task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postTasksIDOwnersWithHttpInfo(String taskID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (taskID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: taskID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = '/tasks/{taskID}/owners'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'taskID' + '}', taskID.toString());

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

  /// Add an owner to a task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwner> postTasksIDOwners(String taskID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postTasksIDOwnersWithHttpInfo(taskID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
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

  /// Add a member to a Telegraf config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postTelegrafsIDMembersWithHttpInfo(String telegrafID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (telegrafID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: telegrafID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = '/telegrafs/{telegrafID}/members'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'telegrafID' + '}', telegrafID.toString());

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

  /// Add a member to a Telegraf config
  ///
  /// Parameters:
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as member
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMember> postTelegrafsIDMembers(String telegrafID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postTelegrafsIDMembersWithHttpInfo(telegrafID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
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

  /// Add an owner to a Telegraf config
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postTelegrafsIDOwnersWithHttpInfo(String telegrafID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (telegrafID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: telegrafID');
    }
    if (addResourceMemberRequestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: addResourceMemberRequestBody');
    }

    final path = '/telegrafs/{telegrafID}/owners'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'telegrafID' + '}', telegrafID.toString());

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

  /// Add an owner to a Telegraf config
  ///
  /// Parameters:
  ///
  /// * [String] telegrafID (required):
  ///   The Telegraf config ID.
  ///
  /// * [AddResourceMemberRequestBody] addResourceMemberRequestBody (required):
  ///   User to add as owner
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwner> postTelegrafsIDOwners(String telegrafID, AddResourceMemberRequestBody addResourceMemberRequestBody, { String zapTraceSpan }) async {
    final response = await postTelegrafsIDOwnersWithHttpInfo(telegrafID, addResourceMemberRequestBody,  zapTraceSpan: zapTraceSpan );
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
  Future<Response> postUsersWithHttpInfo(User user, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (user == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: user');
    }

    final path = '/users'.replaceAll('{format}', 'json');

    Object postBody = user;

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

  /// Create a user
  ///
  /// Parameters:
  ///
  /// * [User] user (required):
  ///   User to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<User> postUsers(User user, { String zapTraceSpan }) async {
    final response = await postUsersWithHttpInfo(user,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    }
    return null;
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
  Future<Response> postUsersIDPasswordWithHttpInfo(String userID, PasswordResetBody passwordResetBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (userID == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userID');
    }
    if (passwordResetBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: passwordResetBody');
    }

    final path = '/users/{userID}/password'.replaceAll('{format}', 'json')
      .replaceAll('{' + 'userID' + '}', userID.toString());

    Object postBody = passwordResetBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['BasicAuth'];

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
  Future<void> postUsersIDPassword(String userID, PasswordResetBody passwordResetBody, { String zapTraceSpan }) async {
    final response = await postUsersIDPasswordWithHttpInfo(userID, passwordResetBody,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> putMePasswordWithHttpInfo(PasswordResetBody passwordResetBody, { String zapTraceSpan }) async {
    // Verify required params are set.
    if (passwordResetBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: passwordResetBody');
    }

    final path = '/me/password'.replaceAll('{format}', 'json');

    Object postBody = passwordResetBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['BasicAuth'];

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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<void> putMePassword(PasswordResetBody passwordResetBody, { String zapTraceSpan }) async {
    final response = await putMePasswordWithHttpInfo(passwordResetBody,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }
}
