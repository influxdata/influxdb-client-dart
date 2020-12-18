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

  Future<Response> doPost(Uri uri, payload) {
    var headers = <String, String>{'Authorization': 'Token ' + influxDB.token};
    return influxDB.client.post(uri, body: payload, headers: headers);
  }

  Future<Response> doGet(Uri uri, payload) async {
    var headers = <String, String>{'Authorization': 'Token ' + influxDB.token};
    return await influxDB.client.get(uri, headers: headers);
  }

  Uri createUri(
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

class HttpTokenAuth implements Authentication {
  HttpTokenAuth(token);

  String token;

  @override
  void applyToParams(
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    headerParams['Authorization'] = 'Token $token';
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

  ApiClient getApiClient({String basePath = "/api/v2"}) {
    var api = ApiClient(basePath: url + basePath);
    // api._authentications[r'TokenAuth'] = HttpTokenAuth(token);
    api.addDefaultHeader('Authorization', 'Token $token');
    api.addDefaultHeader('User-Agent', '$CLIENT_NAME-dart/$CLIENT_VERSION');
    return api;
  }

  HealthApi getHealthApi() {
    return HealthApi(getApiClient(basePath : '/health'));
  }

  ReadyApi getReadyApi() {
    return ReadyApi(getApiClient(basePath : '/ready'));
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
    return delegate.send(request);
  }

  @override
  void close() => delegate.close();

  void _traceRequest(BaseRequest request) {
    print('>> ${request.method} ${request.url} =====');
    print('>> headers: ${request.headers}');
    print('>> contentLength: ${request.contentLength}');
  }
}
