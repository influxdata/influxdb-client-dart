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

  /// Write time series data into InfluxDB
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Specifies the destination organization for writes. Takes either the ID or Name interchangeably. If both `orgID` and `org` are specified, `org` takes precedence.
  ///
  /// * [String] bucket (required):
  ///   The destination bucket for writes.
  ///
  /// * [String] body (required):
  ///   Line protocol body
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] contentEncoding:
  ///   When present, its value indicates to the database that compression is applied to the line-protocol body.
  ///
  /// * [String] contentType:
  ///   Content-Type is used to indicate the format of the data sent to the server.
  ///
  /// * [int] contentLength:
  ///   Content-Length is an entity header is indicating the size of the entity-body, in bytes, sent to the database. If the length is greater than the database max body configuration option, a 413 response is sent.
  ///
  /// * [String] accept:
  ///   Specifies the return content format.
  ///
  /// * [String] orgID:
  ///   Specifies the ID of the destination organization for writes. If both `orgID` and `org` are specified, `org` takes precedence.
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
    final authNames = <String>[];


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

  /// Write time series data into InfluxDB
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Specifies the destination organization for writes. Takes either the ID or Name interchangeably. If both `orgID` and `org` are specified, `org` takes precedence.
  ///
  /// * [String] bucket (required):
  ///   The destination bucket for writes.
  ///
  /// * [String] body (required):
  ///   Line protocol body
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  ///
  /// * [String] contentEncoding:
  ///   When present, its value indicates to the database that compression is applied to the line-protocol body.
  ///
  /// * [String] contentType:
  ///   Content-Type is used to indicate the format of the data sent to the server.
  ///
  /// * [int] contentLength:
  ///   Content-Length is an entity header is indicating the size of the entity-body, in bytes, sent to the database. If the length is greater than the database max body configuration option, a 413 response is sent.
  ///
  /// * [String] accept:
  ///   Specifies the return content format.
  ///
  /// * [String] orgID:
  ///   Specifies the ID of the destination organization for writes. If both `orgID` and `org` are specified, `org` takes precedence.
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
