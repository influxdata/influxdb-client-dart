//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class TasksApi {
  TasksApi(this.apiClient);

  final ApiClient apiClient;

  /// Delete a task
  ///
  /// Deletes a task and all associated records
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The ID of the task to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteTasksIDWithHttpInfo(
    String taskID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}'.replaceAll('{taskID}', taskID);

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

  /// Delete a task
  ///
  /// Deletes a task and all associated records
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The ID of the task to delete.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteTasksID(String taskID, {String? zapTraceSpan}) async {
    final response =
        await deleteTasksIDWithHttpInfo(taskID, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a label from a task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] labelID (required):
  ///   The label ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteTasksIDLabelsIDWithHttpInfo(
    String taskID,
    String labelID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/labels/{labelID}'
        .replaceAll('{taskID}', taskID)
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

  /// Delete a label from a task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] labelID (required):
  ///   The label ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteTasksIDLabelsID(String taskID, String labelID,
      {String? zapTraceSpan}) async {
    final response = await deleteTasksIDLabelsIDWithHttpInfo(taskID, labelID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> deleteTasksIDMembersIDWithHttpInfo(
    String userID,
    String taskID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/members/{userID}'
        .replaceAll('{userID}', userID)
        .replaceAll('{taskID}', taskID);

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
  Future<void> deleteTasksIDMembersID(String userID, String taskID,
      {String? zapTraceSpan}) async {
    final response = await deleteTasksIDMembersIDWithHttpInfo(userID, taskID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> deleteTasksIDOwnersIDWithHttpInfo(
    String userID,
    String taskID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/owners/{userID}'
        .replaceAll('{userID}', userID)
        .replaceAll('{taskID}', taskID);

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
  Future<void> deleteTasksIDOwnersID(String userID, String taskID,
      {String? zapTraceSpan}) async {
    final response = await deleteTasksIDOwnersIDWithHttpInfo(userID, taskID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Cancel a running task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] runID (required):
  ///   The run ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> deleteTasksIDRunsIDWithHttpInfo(
    String taskID,
    String runID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/runs/{runID}'
        .replaceAll('{taskID}', taskID)
        .replaceAll('{runID}', runID);

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

  /// Cancel a running task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] runID (required):
  ///   The run ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<void> deleteTasksIDRunsID(String taskID, String runID,
      {String? zapTraceSpan}) async {
    final response = await deleteTasksIDRunsIDWithHttpInfo(taskID, runID,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all tasks
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] name:
  ///   Returns task with a specific name.
  ///
  /// * [String] after:
  ///   Return tasks after a specified ID.
  ///
  /// * [String] user:
  ///   Filter tasks to a specific user ID.
  ///
  /// * [String] org:
  ///   Filter tasks to a specific organization name.
  ///
  /// * [String] orgID:
  ///   Filter tasks to a specific organization ID.
  ///
  /// * [String] status:
  ///   Filter tasks by a status--\"inactive\" or \"active\".
  ///
  /// * [int] limit:
  ///   The number of tasks to return
  ///
  /// * [String] type:
  ///   Type of task, unset by default.
  Future<Response> getTasksWithHttpInfo({
    String? zapTraceSpan,
    String? name,
    String? after,
    String? user,
    String? org,
    String? orgID,
    String? status,
    int? limit,
    String? type,
  }) async {
    final path = r'/tasks';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'name', name));
    }
    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'after', after));
    }
    if (user != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'user', user));
    }
    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }
    if (orgID != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
    if (status != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'status', status));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (type != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'type', type));
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

  /// List all tasks
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] name:
  ///   Returns task with a specific name.
  ///
  /// * [String] after:
  ///   Return tasks after a specified ID.
  ///
  /// * [String] user:
  ///   Filter tasks to a specific user ID.
  ///
  /// * [String] org:
  ///   Filter tasks to a specific organization name.
  ///
  /// * [String] orgID:
  ///   Filter tasks to a specific organization ID.
  ///
  /// * [String] status:
  ///   Filter tasks by a status--\"inactive\" or \"active\".
  ///
  /// * [int] limit:
  ///   The number of tasks to return
  ///
  /// * [String] type:
  ///   Type of task, unset by default.
  Future<Tasks> getTasks(
      {String? zapTraceSpan,
      String? name,
      String? after,
      String? user,
      String? org,
      String? orgID,
      String? status,
      int? limit,
      String? type}) async {
    final response = await getTasksWithHttpInfo(
        zapTraceSpan: zapTraceSpan,
        name: name,
        after: after,
        user: user,
        org: org,
        orgID: orgID,
        status: status,
        limit: limit,
        type: type);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Tasks',
      ) as Tasks;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Retrieve a task
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
  Future<Response> getTasksIDWithHttpInfo(
    String taskID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}'.replaceAll('{taskID}', taskID);

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

  /// Retrieve a task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Task> getTasksID(String taskID, {String? zapTraceSpan}) async {
    final response =
        await getTasksIDWithHttpInfo(taskID, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Task',
      ) as Task;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// List all labels for a task
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
  Future<Response> getTasksIDLabelsWithHttpInfo(
    String taskID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/labels'.replaceAll('{taskID}', taskID);

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

  /// List all labels for a task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<LabelsResponse> getTasksIDLabels(String taskID,
      {String? zapTraceSpan}) async {
    final response =
        await getTasksIDLabelsWithHttpInfo(taskID, zapTraceSpan: zapTraceSpan);
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

  /// Retrieve all logs for a task
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
  Future<Response> getTasksIDLogsWithHttpInfo(
    String taskID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/logs'.replaceAll('{taskID}', taskID);

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

  /// Retrieve all logs for a task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Logs> getTasksIDLogs(String taskID, {String? zapTraceSpan}) async {
    final response =
        await getTasksIDLogsWithHttpInfo(taskID, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Logs',
      ) as Logs;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> getTasksIDMembersWithHttpInfo(
    String taskID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/members'.replaceAll('{taskID}', taskID);

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

  /// List all task members
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceMembers> getTasksIDMembers(String taskID,
      {String? zapTraceSpan}) async {
    final response =
        await getTasksIDMembersWithHttpInfo(taskID, zapTraceSpan: zapTraceSpan);
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
  Future<Response> getTasksIDOwnersWithHttpInfo(
    String taskID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/owners'.replaceAll('{taskID}', taskID);

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

  /// List all owners of a task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<ResourceOwners> getTasksIDOwners(String taskID,
      {String? zapTraceSpan}) async {
    final response =
        await getTasksIDOwnersWithHttpInfo(taskID, zapTraceSpan: zapTraceSpan);
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

  /// List runs for a task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The ID of the task to get runs for.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] after:
  ///   Returns runs after a specific ID.
  ///
  /// * [int] limit:
  ///   The number of runs to return
  ///
  /// * [DateTime] afterTime:
  ///   Filter runs to those scheduled after this time, RFC3339
  ///
  /// * [DateTime] beforeTime:
  ///   Filter runs to those scheduled before this time, RFC3339
  Future<Response> getTasksIDRunsWithHttpInfo(
    String taskID, {
    String? zapTraceSpan,
    String? after,
    int? limit,
    DateTime? afterTime,
    DateTime? beforeTime,
  }) async {
    final path = r'/tasks/{taskID}/runs'.replaceAll('{taskID}', taskID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (after != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'after', after));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (afterTime != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'afterTime', afterTime));
    }
    if (beforeTime != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'beforeTime', beforeTime));
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

  /// List runs for a task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The ID of the task to get runs for.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] after:
  ///   Returns runs after a specific ID.
  ///
  /// * [int] limit:
  ///   The number of runs to return
  ///
  /// * [DateTime] afterTime:
  ///   Filter runs to those scheduled after this time, RFC3339
  ///
  /// * [DateTime] beforeTime:
  ///   Filter runs to those scheduled before this time, RFC3339
  Future<Runs> getTasksIDRuns(String taskID,
      {String? zapTraceSpan,
      String? after,
      int? limit,
      DateTime? afterTime,
      DateTime? beforeTime}) async {
    final response = await getTasksIDRunsWithHttpInfo(taskID,
        zapTraceSpan: zapTraceSpan,
        after: after,
        limit: limit,
        afterTime: afterTime,
        beforeTime: beforeTime);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Runs',
      ) as Runs;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Retrieve a single run for a task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] runID (required):
  ///   The run ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getTasksIDRunsIDWithHttpInfo(
    String taskID,
    String runID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/runs/{runID}'
        .replaceAll('{taskID}', taskID)
        .replaceAll('{runID}', runID);

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

  /// Retrieve a single run for a task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] runID (required):
  ///   The run ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Run> getTasksIDRunsID(String taskID, String runID,
      {String? zapTraceSpan}) async {
    final response = await getTasksIDRunsIDWithHttpInfo(taskID, runID,
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
        'Run',
      ) as Run;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Retrieve all logs for a run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   ID of task to get logs for.
  ///
  /// * [String] runID (required):
  ///   ID of run to get logs for.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getTasksIDRunsIDLogsWithHttpInfo(
    String taskID,
    String runID, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/runs/{runID}/logs'
        .replaceAll('{taskID}', taskID)
        .replaceAll('{runID}', runID);

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

  /// Retrieve all logs for a run
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   ID of task to get logs for.
  ///
  /// * [String] runID (required):
  ///   ID of run to get logs for.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Logs> getTasksIDRunsIDLogs(String taskID, String runID,
      {String? zapTraceSpan}) async {
    final response = await getTasksIDRunsIDLogsWithHttpInfo(taskID, runID,
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
        'Logs',
      ) as Logs;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Update a task
  ///
  /// Update a task. This will cancel all queued runs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [TaskUpdateRequest] taskUpdateRequest (required):
  ///   Task update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> patchTasksIDWithHttpInfo(
    String taskID,
    TaskUpdateRequest taskUpdateRequest, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}'.replaceAll('{taskID}', taskID);

    // ignore: prefer_final_locals
    Object? postBody = taskUpdateRequest;

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

  /// Update a task
  ///
  /// Update a task. This will cancel all queued runs.
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [TaskUpdateRequest] taskUpdateRequest (required):
  ///   Task update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Task> patchTasksID(String taskID, TaskUpdateRequest taskUpdateRequest,
      {String? zapTraceSpan}) async {
    final response = await patchTasksIDWithHttpInfo(taskID, taskUpdateRequest,
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
        'Task',
      ) as Task;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Create a new task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TaskCreateRequest] taskCreateRequest (required):
  ///   Task to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postTasksWithHttpInfo(
    TaskCreateRequest taskCreateRequest, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks';

    // ignore: prefer_final_locals
    Object? postBody = taskCreateRequest;

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

  /// Create a new task
  ///
  /// Parameters:
  ///
  /// * [TaskCreateRequest] taskCreateRequest (required):
  ///   Task to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Task> postTasks(TaskCreateRequest taskCreateRequest,
      {String? zapTraceSpan}) async {
    final response = await postTasksWithHttpInfo(taskCreateRequest,
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
        'Task',
      ) as Task;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Add a label to a task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [LabelMapping] labelMapping (required):
  ///   Label to add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postTasksIDLabelsWithHttpInfo(
    String taskID,
    LabelMapping labelMapping, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/labels'.replaceAll('{taskID}', taskID);

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

  /// Add a label to a task
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [LabelMapping] labelMapping (required):
  ///   Label to add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<LabelResponse> postTasksIDLabels(
      String taskID, LabelMapping labelMapping,
      {String? zapTraceSpan}) async {
    final response = await postTasksIDLabelsWithHttpInfo(taskID, labelMapping,
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
  Future<Response> postTasksIDMembersWithHttpInfo(
    String taskID,
    AddResourceMemberRequestBody addResourceMemberRequestBody, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/members'.replaceAll('{taskID}', taskID);

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
  Future<ResourceMember> postTasksIDMembers(
      String taskID, AddResourceMemberRequestBody addResourceMemberRequestBody,
      {String? zapTraceSpan}) async {
    final response = await postTasksIDMembersWithHttpInfo(
        taskID, addResourceMemberRequestBody,
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
  Future<Response> postTasksIDOwnersWithHttpInfo(
    String taskID,
    AddResourceMemberRequestBody addResourceMemberRequestBody, {
    String? zapTraceSpan,
  }) async {
    final path = r'/tasks/{taskID}/owners'.replaceAll('{taskID}', taskID);

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
  Future<ResourceOwner> postTasksIDOwners(
      String taskID, AddResourceMemberRequestBody addResourceMemberRequestBody,
      {String? zapTraceSpan}) async {
    final response = await postTasksIDOwnersWithHttpInfo(
        taskID, addResourceMemberRequestBody,
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

  /// Manually start a task run, overriding the current schedule
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [RunManually] runManually:
  Future<Response> postTasksIDRunsWithHttpInfo(
    String taskID, {
    String? zapTraceSpan,
    RunManually? runManually,
  }) async {
    final path = r'/tasks/{taskID}/runs'.replaceAll('{taskID}', taskID);

    // ignore: prefer_final_locals
    Object? postBody = runManually;

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

  /// Manually start a task run, overriding the current schedule
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [RunManually] runManually:
  Future<Run> postTasksIDRuns(String taskID,
      {String? zapTraceSpan, RunManually? runManually}) async {
    final response = await postTasksIDRunsWithHttpInfo(taskID,
        zapTraceSpan: zapTraceSpan, runManually: runManually);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Run',
      ) as Run;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Retry a task run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] runID (required):
  ///   The run ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [Object] body:
  Future<Response> postTasksIDRunsIDRetryWithHttpInfo(
    String taskID,
    String runID, {
    String? zapTraceSpan,
    Object? body,
  }) async {
    final path = r'/tasks/{taskID}/runs/{runID}/retry'
        .replaceAll('{taskID}', taskID)
        .replaceAll('{runID}', runID);

    // ignore: prefer_final_locals
    Object? postBody = body;

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
    const contentTypes = <String>['application/json; charset=utf-8'];

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

  /// Retry a task run
  ///
  /// Parameters:
  ///
  /// * [String] taskID (required):
  ///   The task ID.
  ///
  /// * [String] runID (required):
  ///   The run ID.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [Object] body:
  Future<Run> postTasksIDRunsIDRetry(String taskID, String runID,
      {String? zapTraceSpan, Object? body}) async {
    final response = await postTasksIDRunsIDRetryWithHttpInfo(taskID, runID,
        zapTraceSpan: zapTraceSpan, body: body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Run',
      ) as Run;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }
}
