// @dart=2.0

part of influxdb_client_api;

class QueryOptions {
  bool gzip = true;
}

var DEFAULT_dialect = Dialect();

class QueryService extends DefaultService {
  QueryApi queryApi;

  QueryService(InfluxDBClient client) : super(client) {
    queryApi = QueryApi(client.getApiClient());
  }
  Future<String> queryRaw(String fluxQuery) async {
    var query = Query(dialect:DEFAULT_dialect, query: fluxQuery);
    return await queryApi.postQuery(query: query, org: influxDB.org);
  }

}
