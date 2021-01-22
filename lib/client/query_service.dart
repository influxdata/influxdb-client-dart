// @dart=2.0

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

class QueryService extends DefaultService {
  QueryApi queryApi;
  bool gzip = false;
  QueryOptions queryOptions;

  QueryService(InfluxDBClient client, {QueryOptions queryOptions})
      : super(client) {
    this.queryOptions = queryOptions ?? defaultQueryOptions;
    queryApi = QueryApi(client.getApiClient());
  }

  /// Gets the result of query as a raw string, use this with care
  Future<String> queryRaw(String fluxQuery, {Dialect dialect}) async {
    var query = Query(dialect: dialect, query: fluxQuery);
    return await queryApi.postQuery(
        query: query,
        acceptEncoding: queryOptions.gzip ? 'gzip' : 'identity',
        org: influxDB.org);
  }

  /// Streams the result of query, each line is CSV parsed list of objects.
  Future<Stream<List<dynamic>>> queryLines(String fluxQuery,
      {Dialect dialect}) async {
    var q = Query(query: fluxQuery, dialect: dialect);
    var response = await _send('/api/v2/query', {'org': influxDB.org}, q);
    return utf8.decoder.bind(response.stream).transform(CsvToListConverter());
  }

  /// Streams the result og the query as
  Future<StreamSubscription<FluxRecord>> queryAsync(
      String fluxQuery, void Function(FluxRecord event) onData,
      {Function onError, void Function() onDone}) async {
    var q = Query(query: fluxQuery, dialect: DEFAULT_dialect);

    var response = await _send('/api/v2/query', {'org': influxDB.org}, q);
    return utf8.decoder
        .bind(response.stream)
        .transform(CsvToListConverter())
        .transform(FluxTransformer())
        .listen(onData, onError: onError, onDone: onDone);
  }

  Future<Stream<FluxRecord>> queryRecords(String fluxQuery) async {
    var q = Query(query: fluxQuery, dialect: DEFAULT_dialect);
    var response = await _send('/api/v2/query', {'org': influxDB.org}, q);
    return utf8.decoder
        .bind(response.stream)
        .transform(CsvToListConverter())
        .transform(FluxTransformer());
  }

  Future<StreamedResponse> _send(path, queryParams, body) async {
    var uri = createUri(path, queryParams);
    var r = Request('POST', uri);
    addAuthHeader(r);
    r.headers[r'Accept-Encoding'] = queryOptions.gzip ? 'gzip' : 'identity';
    r.body = jsonEncode(body.toJson());
    var response = await influxDB.client.send(r);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw InfluxDBException.fromJson(
          await response.stream.bytesToString(), response.statusCode);
    }
    return response;
  }
}
