//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class DBRPsApi {
  DBRPsApi(ApiClient apiClient) : apiClient = apiClient;

  final ApiClient apiClient;

  /// Delete a database retention policy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<Response> deleteDBRPIDWithHttpInfo(
    String dbrpID, {
    String? zapTraceSpan,
    String? orgID,
    String? org,
  }) async {
    final path = r'/dbrps/{dbrpID}'.replaceAll('{dbrpID}', dbrpID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orgID != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Delete a database retention policy
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<void> deleteDBRPID(String dbrpID,
      {String? zapTraceSpan, String? orgID, String? org}) async {
    final response = await deleteDBRPIDWithHttpInfo(dbrpID,
        zapTraceSpan: zapTraceSpan, orgID: orgID, org: org);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List database retention policy mappings
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID to filter on
  ///
  /// * [String] org:
  ///   Specifies the organization name to filter on
  ///
  /// * [String] id:
  ///   Specifies the mapping ID to filter on
  ///
  /// * [String] bucketID:
  ///   Specifies the bucket ID to filter on
  ///
  /// * [bool] default_:
  ///   Specifies filtering on default
  ///
  /// * [String] db:
  ///   Specifies the database to filter on
  ///
  /// * [String] rp:
  ///   Specifies the retention policy to filter on
  Future<Response> getDBRPsWithHttpInfo({
    String? zapTraceSpan,
    String? orgID,
    String? org,
    String? id,
    String? bucketID,
    bool? default_,
    String? db,
    String? rp,
  }) async {
    final path = r'/dbrps';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orgID != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }
    if (id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'id', id));
    }
    if (bucketID != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'bucketID', bucketID));
    }
    if (default_ != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat('', 'default', default_));
    }
    if (db != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'db', db));
    }
    if (rp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'rp', rp));
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

  /// List database retention policy mappings
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID to filter on
  ///
  /// * [String] org:
  ///   Specifies the organization name to filter on
  ///
  /// * [String] id:
  ///   Specifies the mapping ID to filter on
  ///
  /// * [String] bucketID:
  ///   Specifies the bucket ID to filter on
  ///
  /// * [bool] default_:
  ///   Specifies filtering on default
  ///
  /// * [String] db:
  ///   Specifies the database to filter on
  ///
  /// * [String] rp:
  ///   Specifies the retention policy to filter on
  Future<DBRPs> getDBRPs(
      {String? zapTraceSpan,
      String? orgID,
      String? org,
      String? id,
      String? bucketID,
      bool? default_,
      String? db,
      String? rp}) async {
    final response = await getDBRPsWithHttpInfo(
        zapTraceSpan: zapTraceSpan,
        orgID: orgID,
        org: org,
        id: id,
        bucketID: bucketID,
        default_: default_,
        db: db,
        rp: rp);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'DBRPs',
      ) as DBRPs;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Retrieve a database retention policy mapping
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping ID
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<Response> getDBRPsIDWithHttpInfo(
    String dbrpID, {
    String? zapTraceSpan,
    String? orgID,
    String? org,
  }) async {
    final path = r'/dbrps/{dbrpID}'.replaceAll('{dbrpID}', dbrpID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orgID != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
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

  /// Retrieve a database retention policy mapping
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping ID
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<DBRPGet> getDBRPsID(String dbrpID,
      {String? zapTraceSpan, String? orgID, String? org}) async {
    final response = await getDBRPsIDWithHttpInfo(dbrpID,
        zapTraceSpan: zapTraceSpan, orgID: orgID, org: org);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'DBRPGet',
      ) as DBRPGet;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Update a database retention policy mapping
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping.
  ///
  /// * [DBRPUpdate] dBRPUpdate (required):
  ///   Database retention policy update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<Response> patchDBRPIDWithHttpInfo(
    String dbrpID,
    DBRPUpdate dBRPUpdate, {
    String? zapTraceSpan,
    String? orgID,
    String? org,
  }) async {
    final path = r'/dbrps/{dbrpID}'.replaceAll('{dbrpID}', dbrpID);

    // ignore: prefer_final_locals
    Object? postBody = dBRPUpdate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orgID != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
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

  /// Update a database retention policy mapping
  ///
  /// Parameters:
  ///
  /// * [String] dbrpID (required):
  ///   The database retention policy mapping.
  ///
  /// * [DBRPUpdate] dBRPUpdate (required):
  ///   Database retention policy update to apply
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] orgID:
  ///   Specifies the organization ID of the mapping
  ///
  /// * [String] org:
  ///   Specifies the organization name of the mapping
  Future<DBRPGet> patchDBRPID(String dbrpID, DBRPUpdate dBRPUpdate,
      {String? zapTraceSpan, String? orgID, String? org}) async {
    final response = await patchDBRPIDWithHttpInfo(dbrpID, dBRPUpdate,
        zapTraceSpan: zapTraceSpan, orgID: orgID, org: org);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'DBRPGet',
      ) as DBRPGet;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Add a database retention policy mapping
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DBRPCreate] dBRPCreate (required):
  ///   The database retention policy mapping to add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postDBRPWithHttpInfo(
    DBRPCreate dBRPCreate, {
    String? zapTraceSpan,
  }) async {
    final path = r'/dbrps';

    // ignore: prefer_final_locals
    Object? postBody = dBRPCreate;

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

  /// Add a database retention policy mapping
  ///
  /// Parameters:
  ///
  /// * [DBRPCreate] dBRPCreate (required):
  ///   The database retention policy mapping to add
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<DBRP> postDBRP(DBRPCreate dBRPCreate, {String? zapTraceSpan}) async {
    final response =
        await postDBRPWithHttpInfo(dBRPCreate, zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'DBRP',
      ) as DBRP;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }
}
