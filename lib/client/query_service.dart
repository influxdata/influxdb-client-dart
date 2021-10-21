part of influxdb_client_api;

class QueryOptions {
  bool gzip;

  QueryOptions({this.gzip = false});
}

final defaultQueryOptions = QueryOptions(gzip: true);

final Dialect DEFAULT_dialect = Dialect(
    header: true,
    delimiter: ',',
    annotations: [
      DialectAnnotationsEnum.datatype,
      DialectAnnotationsEnum.group,
      DialectAnnotationsEnum.default_
    ],
    commentPrefix: '#',
    dateTimeFormat: DialectDateTimeFormatEnum.rFC3339);

/// Query InfluxDB 2.0. Provides methods for stream Flux query.
/// See {@link https://v2.docs.influxdata.com/v2.0/api/#operation/PostQuery }

class QueryService extends DefaultService {
  QueryApi? queryApi;
  bool gzip = false;
  late QueryOptions queryOptions;

  QueryService(InfluxDBClient client, {QueryOptions? queryOptions})
      : super(client) {
    this.queryOptions = queryOptions ?? defaultQueryOptions;
    queryApi = QueryApi(client.getApiClient());
  }

  /// Gets the result of [fluxQuery] as a raw string.
  ///
  /// Use this with care, all response is stored in memory.
  /// Result CSV format can be changed using [dialect].
  Future<String> queryRaw(String fluxQuery, {Dialect? dialect}) async {
    var query = Query(dialect: dialect, query: fluxQuery);
    var uri = _buildUri(influxDB.url!, '/api/v2/query', {'org': influxDB.org});
    var body = jsonEncode(query);
    Map<String, String> headers = {};
    _updateParamsForAuth(headers);
    var response = await _invoke(uri, 'POST',
        headers: headers, body: body, maxRedirects: influxDB.maxRedirects);
    return (response as Response).body;
  }

  /// Streams the result of [fluxQuery] using [Dialect].
  ///
  /// Each line is CSV parsed list of objects.
  Future<Stream<List<dynamic>>> queryLines(String fluxQuery,
      {Dialect? dialect}) async {
    var q = Query(query: fluxQuery, dialect: dialect);
    var response = await _send('/api/v2/query', {'org': influxDB.org}, q);
    return utf8.decoder
        .bind((response as StreamedResponse).stream)
        .transform(CsvToListConverter());
  }

  /// Streams the result of query into [Stream<FluxRecord>]
  Future<Stream<FluxRecord>> query(String fluxQuery) async {
    var q = Query(query: fluxQuery, dialect: DEFAULT_dialect);
    var response = await _send('/api/v2/query', {'org': influxDB.org}, q);
    return utf8.decoder
        .bind((response as StreamedResponse).stream)
        .transform(CsvToListConverter())
        .transform(FluxTransformer());
  }

  Future<BaseResponse> _send(
      String path, Map<String, String?> queryParams, body) async {
    var uri = _buildUri(influxDB.url!, path, queryParams);
    Map<String, String> headers = {};
    headers[r'Accept-Encoding'] = queryOptions.gzip ? 'gzip' : 'identity';
    headers[r'Content-Type'] = 'application/json';
    _updateParamsForAuth(headers);
    return await (_invoke(uri, 'POST',
        headers: headers,
        body: jsonEncode(body.toJson()),
        maxRedirects: influxDB.maxRedirects,
        stream: true) as FutureOr<BaseResponse>);
  }
}
