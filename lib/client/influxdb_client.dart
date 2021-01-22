// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';
// import 'package:logging/logging.dart';

// @dart=2.0

part of influxdb_client_api;

String CLIENT_VERSION =
    loadYaml(File('pubspec.yaml').readAsStringSync())['version'];
String CLIENT_NAME = loadYaml(File('pubspec.yaml').readAsStringSync())['name'];

///
/// Superclass for all services.
///
abstract class DefaultService {
  final InfluxDBClient influxDB;

  final log = Logger('WriteService');

  DefaultService(this.influxDB);

  get version => influxDB.version;

  Map<String, String> authHeader() {
    return {'Authorization': 'Token ' + influxDB.token};
  }
  void addAuthHeader(Request r) {
    r.headers.addAll(authHeader());
  }

  Future<Response> doPost(Uri uri, payload) async {
    return influxDB.client.post(uri, body: payload, headers: authHeader());
  }


  Future<Response> doGet(Uri uri, payload) async {
    return await influxDB.client.get(uri, headers: authHeader());
  }

  Uri createUri(String path, Map<String, String> queryParams) {
    return _buildUri(influxDB.url, path, queryParams);
  }

  Uri _buildUri(
      String influxUrl, String path, Map<String, String> queryParams) {
    Uri uri;

    if (influxUrl.startsWith('https://')) {
      uri =
          Uri.https(influxUrl.substring('https://'.length), path, queryParams);
    } else if (influxUrl.startsWith('http://')) {
      uri = Uri.http(influxUrl.substring('http://'.length), path, queryParams);
    } else {
      throw ArgumentError('Invalid url: ' + influxUrl);
    }
    return uri;
  }

  Client getClient() {
    return influxDB.client;
  }

  ApiClient getApiClient(String basePath) {
    return influxDB.getApiClient(basePath: basePath);
  }
}

///
/// Main InfluxDB client class
///
class InfluxDBClient {
  InfluxDBClient(
      {String url,
      String token,
      String bucket,
      String org,
      http.Client client,
      bool debugEnabled = false}) {
    this.url = url ?? String.fromEnvironment('INFLUXDB_URL');
    this.token = token ?? String.fromEnvironment('INFLUXDB_TOKEN');
    this.bucket = bucket ?? String.fromEnvironment('INFLUXDB_BUCKET');
    this.org = org ?? String.fromEnvironment('INFLUXDB_ORG');
    this.client = client ?? LoggingClient(debugEnabled, http.Client());
    this.debugEnabled = debugEnabled;
  }

  String token;
  String url;
  String bucket;
  String org;
  bool debugEnabled;

  http.Client client;

  get version => '0.0.1';

  void close() {
    client.close();
  }

  ApiClient getApiClient({String basePath = '/api/v2'}) {
    var api = ApiClient(basePath: url + basePath);
    api._client = client;
    api.addDefaultHeader('Authorization', 'Token $token');
    api.addDefaultHeader('User-Agent', '$CLIENT_NAME-dart/$CLIENT_VERSION');
    return api;
  }

  AuthorizationsApi getAuthorizationsApi() {
    return AuthorizationsApi(getApiClient());
  }

  BucketsApi getBucketsApi() {
    return BucketsApi(getApiClient());
  }

  HealthApi getHealthApi() {
    return HealthApi(getApiClient(basePath : '/health'));
  }

  LabelsApi getLabelsApi() {
    return LabelsApi(getApiClient());
  }

  OrganizationsApi getOrganizationsApi() {
    return OrganizationsApi(getApiClient());
  }

  ReadyApi getReadyApi() {
    return ReadyApi(getApiClient(basePath : '/ready'));
  }

  TasksApi getTasksApi() {
    return TasksApi(getApiClient());
  }

  UsersApi getUsersApi() {
    return UsersApi(getApiClient());
  }

  WriteService getWriteService([WriteOptions writeOptions]) {
    return WriteService(this, writeOptions: writeOptions);
  }

  QueryService getQueryService({QueryOptions queryOptions}) {
    return QueryService(this, queryOptions: queryOptions);
  }

  DeleteService getDeleteService() {
    return DeleteService(this);
  }

}

class LoggingClient extends BaseClient {
  bool debugEnabled = true;
  final Client delegate;

  LoggingClient(this.debugEnabled, this.delegate);

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    if (debugEnabled) {
      _traceRequest(request);
    }
    var send = delegate.send(request);
    send.then((resp) {
      print('<< status: ${resp.statusCode} - contentLength: ${resp.contentLength}');
      print('<< headers: ${resp.headers}');
    });
    return send;
  }

  @override
  void close() => delegate.close();

  void _traceRequest(BaseRequest request) {
    print('>> ${request.method} ${request.url} =====');
    print('>> headers: ${request.headers}');
    print('>> contentLength: ${request.contentLength}');
  }
}
