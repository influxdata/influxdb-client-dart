part of influxdb_client_api;

class QueryOptions {
  bool gzip;

  QueryOptions({this.gzip = false});
}

final defaultQueryOptions = QueryOptions(gzip: true);

final Dialect defaultDialect = Dialect(
    header: true,
    delimiter: ',',
    annotations: [
      DialectAnnotationsEnum.datatype,
      DialectAnnotationsEnum.group,
      DialectAnnotationsEnum.default_
    ],
    commentPrefix: '#',
    dateTimeFormat: DialectDateTimeFormatEnum.rFC3339);

/// Query InfluxDB 2.x. Provides methods for stream Flux query.
/// See {@link https://docs.influxdata.com/influxdb/latest/api/#operation/PostQuery }

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
  Future<String> queryRaw(fluxQuery,
      {Dialect? dialect, Map<String, Object>? params}) async {
    var query = fluxQuery is Query ? fluxQuery : Query(query: fluxQuery);

    query.params = params ?? query.params;
    query.dialect = dialect ?? query.dialect;

    var response = await _send('/api/v2/query', {'org': influxDB.org}, query);
    return (response as StreamedResponse).stream.bytesToString();
  }

  /// Streams the result of [fluxQuery] using [Dialect].
  ///
  /// Each line is CSV parsed list of objects.
  Future<Stream<List<dynamic>>> queryLines(fluxQuery,
      {Dialect? dialect, Map<String, Object>? params}) async {
    var query = fluxQuery is Query ? fluxQuery : Query(query: fluxQuery);

    query.params = params ?? query.params;
    query.dialect = dialect ?? query.dialect;

    var response = await _send('/api/v2/query', {'org': influxDB.org}, query);
    return utf8.decoder
        .bind((response as StreamedResponse).stream)
        .transform(CsvToListConverter());
  }

  /// Streams the result of query into [Stream<FluxRecord>]
  Future<Stream<FluxRecord>> query(fluxQuery,
      {Map<String, Object>? params}) async {
    var query = fluxQuery is Query ? fluxQuery : Query(query: fluxQuery);

    query.params = params ?? query.params;
    query.dialect = query.dialect ?? defaultDialect;

    var response = await _send('/api/v2/query', {'org': influxDB.org}, query);
    return utf8.decoder
        .bind((response as StreamedResponse).stream)
        .transform(CsvToListConverter())
        .transform(FluxTransformer());
  }

  Future<BaseResponse> _send(
      String path, Map<String, String?> queryParams, body) async {
    var enableGzip = queryOptions.gzip;
    return await _post(path, queryParams, enableGzip, body);
  }
}
