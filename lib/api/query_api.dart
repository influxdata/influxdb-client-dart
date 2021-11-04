//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class QueryApi {
  QueryApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieve query suggestions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getQuerySuggestionsWithHttpInfo(
      {String? zapTraceSpan}) async {
    final path = r'/query/suggestions';

    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>[];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];

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

  /// Query data
  ///
  /// Retrieves data from InfluxDB buckets.  To query data, you need the following: - **organization** – _See [View organizations](https://docs.influxdata.com/influxdb/v2.0/organizations/view-orgs/#view-your-organization-id) for instructions on viewing your organization ID._ - **API token** – _See [View tokens](https://docs.influxdata.com/influxdb/v2.0/security/tokens/view-tokens/)  for instructions on viewing your API token._ - **InfluxDB URL** – _See [InfluxDB URLs](https://docs.influxdata.com/influxdb/v2.0/reference/urls/)_. - [Flux](https://docs.influxdata.com/influxdb/v2.0/reference/flux) or [InfluxQL](https://docs.influxdata.com/influxdb/v2.0/query-data/influxql/) query.  For more information and examples, see [Query with the InfluxDB API](https://docs.influxdata.com/influxdb/v2.0/query-data/execute-queries/influx-api/).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] acceptEncoding:
  ///   The Accept-Encoding request HTTP header advertises which content encoding, usually a compression algorithm, the client is able to understand.
  ///
  /// * [String] contentType:
  ///
  /// * [String] org:
  ///   Specifies the name of the organization executing the query. Takes either the ID or Name. If both `orgID` and `org` are specified, `org` takes precedence.
  ///
  /// * [String] orgID:
  ///   Specifies the ID of the organization executing the query. If both `orgID` and `org` are specified, `org` takes precedence.
  ///
  /// * [Query] query:
  ///   Flux query or specification to execute
  Future<Response> postQueryWithHttpInfo(
      {String? zapTraceSpan,
      String? acceptEncoding,
      String? contentType,
      String? org,
      String? orgID,
      required Query query}) async {
    final path = r'/query';

    Object postBody = query.toJson();

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (org != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    }
    if (orgID != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }
    if (acceptEncoding != null) {
      headerParams[r'Accept-Encoding'] = parameterToString(acceptEncoding);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }

    final contentTypes = <String>['application/json', 'application/vnd.flux'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];

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

  /// Query data
  ///
  /// Retrieves data from InfluxDB buckets.  To query data, you need the following: - **organization** – _See [View organizations](https://docs.influxdata.com/influxdb/v2.0/organizations/view-orgs/#view-your-organization-id) for instructions on viewing your organization ID._ - **API token** – _See [View tokens](https://docs.influxdata.com/influxdb/v2.0/security/tokens/view-tokens/)  for instructions on viewing your API token._ - **InfluxDB URL** – _See [InfluxDB URLs](https://docs.influxdata.com/influxdb/v2.0/reference/urls/)_. - [Flux](https://docs.influxdata.com/influxdb/v2.0/reference/flux) or [InfluxQL](https://docs.influxdata.com/influxdb/v2.0/query-data/influxql/) query.  For more information and examples, see [Query with the InfluxDB API](https://docs.influxdata.com/influxdb/v2.0/query-data/execute-queries/influx-api/).
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] acceptEncoding:
  ///   The Accept-Encoding request HTTP header advertises which content encoding, usually a compression algorithm, the client is able to understand.
  ///
  /// * [String] contentType:
  ///
  /// * [String] org:
  ///   Specifies the name of the organization executing the query. Takes either the ID or Name. If both `orgID` and `org` are specified, `org` takes precedence.
  ///
  /// * [String] orgID:
  ///   Specifies the ID of the organization executing the query. If both `orgID` and `org` are specified, `org` takes precedence.
  ///
  /// * [Query] query:
  ///   Flux query or specification to execute
  Future<String> postQuery(
      {String? zapTraceSpan,
      String? acceptEncoding,
      String? contentType,
      String? org,
      String? orgID,
      required Query query}) async {
    final response = await postQueryWithHttpInfo(
        zapTraceSpan: zapTraceSpan,
        acceptEncoding: acceptEncoding,
        contentType: contentType,
        org: org,
        orgID: orgID,
        query: query);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'String',
      );
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }
}
