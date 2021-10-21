//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class WriteApi {
  WriteApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Write data
  ///
  /// Writes data to a bucket.  To write data into InfluxDB, you need the following: - **organization** – _See [View organizations](https://docs.influxdata.com/influxdb/v2.0/organizations/view-orgs/#view-your-organization-id) for instructions on viewing your organization ID._ - **bucket** – _See [View buckets](https://docs.influxdata.com/influxdb/v2.0/organizations/buckets/view-buckets/) for  instructions on viewing your bucket ID._ - **API token** – _See [View tokens](https://docs.influxdata.com/influxdb/v2.0/security/tokens/view-tokens/)  for instructions on viewing your API token._ - **InfluxDB URL** – _See [InfluxDB URLs](https://docs.influxdata.com/influxdb/v2.0/reference/urls/)_. - data in [line protocol](https://docs.influxdata.com/influxdb/v2.0/reference/syntax/line-protocol) format.  For more information and examples, see [Write data with the InfluxDB API](https://docs.influxdata.com/influxdb/v2.0/write-data/developer-tools/api). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   The parameter value specifies the destination organization for writes. The database writes all points in the batch to this organization. If you provide both `orgID` and `org` parameters, `org` takes precedence.
  ///
  /// * [String] bucket (required):
  ///   The destination bucket for writes.
  ///
  /// * [String] body (required):
  ///   Data in line protocol format.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] contentEncoding:
  ///   When present, the header value tells the database that compression is applied to the line protocol in the request body.
  ///
  /// * [String] contentType:
  ///   The header value indicates the format of the data in the request body.
  ///
  /// * [int] contentLength:
  ///   The header value indicates the size of the entity-body, in bytes, sent to the database. If the length is greater than the database's `max body` configuration option, the server responds with status code `413`.
  ///
  /// * [String] accept:
  ///   The header value specifies the response format.
  ///
  /// * [String] orgID:
  ///   The parameter value specifies the ID of the destination organization for writes. If both `orgID` and `org` are specified, `org` takes precedence.
  ///
  /// * [WritePrecision] precision:
  ///   The precision for the unix timestamps within the body line-protocol.
  Future<Response> postWriteWithHttpInfo(String org, String bucket, String body, { String zapTraceSpan, String contentEncoding, String contentType, int contentLength, String accept, String orgID, WritePrecision precision }) async {
    // Verify required params are set.
    if (org == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: org');
    }
    if (bucket == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bucket');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/write';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'org', org));
    if (orgID != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'orgID', orgID));
    }
      queryParams.addAll(_convertParametersForCollectionFormat('', 'bucket', bucket));
    if (precision != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'precision', precision));
    }

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }
    if (contentEncoding != null) {
      headerParams[r'Content-Encoding'] = parameterToString(contentEncoding);
    }
    if (contentType != null) {
      headerParams[r'Content-Type'] = parameterToString(contentType);
    }
    if (contentLength != null) {
      headerParams[r'Content-Length'] = parameterToString(contentLength);
    }
    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    final contentTypes = <String>['text/plain'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['BasicAuthentication', 'QuerystringAuthentication', 'TokenAuthentication'];


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

  /// Write data
  ///
  /// Writes data to a bucket.  To write data into InfluxDB, you need the following: - **organization** – _See [View organizations](https://docs.influxdata.com/influxdb/v2.0/organizations/view-orgs/#view-your-organization-id) for instructions on viewing your organization ID._ - **bucket** – _See [View buckets](https://docs.influxdata.com/influxdb/v2.0/organizations/buckets/view-buckets/) for  instructions on viewing your bucket ID._ - **API token** – _See [View tokens](https://docs.influxdata.com/influxdb/v2.0/security/tokens/view-tokens/)  for instructions on viewing your API token._ - **InfluxDB URL** – _See [InfluxDB URLs](https://docs.influxdata.com/influxdb/v2.0/reference/urls/)_. - data in [line protocol](https://docs.influxdata.com/influxdb/v2.0/reference/syntax/line-protocol) format.  For more information and examples, see [Write data with the InfluxDB API](https://docs.influxdata.com/influxdb/v2.0/write-data/developer-tools/api). 
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   The parameter value specifies the destination organization for writes. The database writes all points in the batch to this organization. If you provide both `orgID` and `org` parameters, `org` takes precedence.
  ///
  /// * [String] bucket (required):
  ///   The destination bucket for writes.
  ///
  /// * [String] body (required):
  ///   Data in line protocol format.
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] contentEncoding:
  ///   When present, the header value tells the database that compression is applied to the line protocol in the request body.
  ///
  /// * [String] contentType:
  ///   The header value indicates the format of the data in the request body.
  ///
  /// * [int] contentLength:
  ///   The header value indicates the size of the entity-body, in bytes, sent to the database. If the length is greater than the database's `max body` configuration option, the server responds with status code `413`.
  ///
  /// * [String] accept:
  ///   The header value specifies the response format.
  ///
  /// * [String] orgID:
  ///   The parameter value specifies the ID of the destination organization for writes. If both `orgID` and `org` are specified, `org` takes precedence.
  ///
  /// * [WritePrecision] precision:
  ///   The precision for the unix timestamps within the body line-protocol.
  Future<void> postWrite(String org, String bucket, String body, { String zapTraceSpan, String contentEncoding, String contentType, int contentLength, String accept, String orgID, WritePrecision precision }) async {
    final response = await postWriteWithHttpInfo(org, bucket, body,  zapTraceSpan: zapTraceSpan, contentEncoding: contentEncoding, contentType: contentType, contentLength: contentLength, accept: accept, orgID: orgID, precision: precision );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
