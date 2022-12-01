part of influxdb_client_api;

String clientVersion = '2.9.0-dev';
String clientName = 'influxdb-client-dart';

///
/// Superclass for all services.
///
abstract class DefaultService {
  final InfluxDBClient influxDB;
  late ApiClient apiClient;

  DefaultService(this.influxDB) {
    apiClient = influxDB.getApiClient();
  }

  Uri _buildUri(
      String influxUrl, String path, Map<String, String?> queryParams) {
    Uri uri;
    if (influxUrl.startsWith('https://')) {
      uri =
          Uri.https(influxUrl.substring('https://'.length), path, queryParams);
    } else if (influxUrl.startsWith('http://')) {
      uri = Uri.http(influxUrl.substring('http://'.length), path, queryParams);
    } else {
      throw ArgumentError('Invalid url: $influxUrl');
    }
    return uri;
  }

  void _updateParamsForAuth(Map<String, String> headers) {
    apiClient.authentications.forEach((_, auth) {
      auth.applyToParams([], headers);
    });
  }

  Client? getClient() {
    return influxDB.client;
  }

  ApiClient? getApiClient(String basePath) {
    return apiClient;
  }

  Future<BaseResponse> _post(String path, Map<String, String?> queryParams,
      bool enableGzip, body) async {
    var uri = _buildUri(influxDB.url!, path, queryParams);
    Map<String, String> headers = {};
    if (enableGzip) {
      headers[r'Accept-Encoding'] = 'gzip';
    }
    headers[r'Content-Type'] = 'application/json';
    _updateParamsForAuth(headers);
    return await (_invoke(uri, 'POST',
        headers: headers,
        body: jsonEncode(body.toJson()),
        maxRedirects: influxDB.maxRedirects,
        stream: true));
  }

  Future<BaseResponse> _invoke(Uri uri, String method,
      {required Map<String, String> headers,
      body,
      maxRedirects,
      stream = false}) {
    headers.addAll(apiClient.defaultHeaderMap);

    if (stream) {
      var request = Request(method, uri);
      request.headers.addAll(headers);
      request.followRedirects = influxDB.followRedirects;
      request.maxRedirects = influxDB.maxRedirects;
      request.body = body;
      return influxDB.client.send(request).then((response) =>
          _handleResponse(method, maxRedirects, response, headers, body, true));
    }

    switch (method) {
      case 'POST':
        {
          return influxDB.client.post(uri, headers: headers, body: body).then(
              (response) => _handleResponse(
                  method, maxRedirects, response, headers, body, false));
        }
      case 'HEAD':
        {
          return influxDB.client.head(uri, headers: headers).then((response) =>
              _handleResponse(
                  method, maxRedirects, response, headers, null, false));
        }
      case 'GET':
        {
          return influxDB.client.get(uri, headers: headers).then((response) =>
              _handleResponse(
                  method, maxRedirects, response, headers, null, false));
        }
      case 'PUT':
        {
          return influxDB.client.put(uri, headers: headers, body: body).then(
              (response) => _handleResponse(
                  method, maxRedirects, response, headers, body, false));
        }
      case 'PATCH':
        {
          return influxDB.client.patch(uri, headers: headers, body: body).then(
              (response) => _handleResponse(
                  method, maxRedirects, response, headers, body, false));
        }
      case 'DELETE':
        {
          return influxDB.client.delete(uri, headers: headers, body: body).then(
              (response) => _handleResponse(
                  method, maxRedirects, response, headers, body, false));
        }
    }
    throw InfluxDBException(0, null, 'Invalid http method');
  }

  Future<BaseResponse> _handleResponse(method, maxRedirects,
      BaseResponse response, headers, body, bool stream) async {
    //handle errors
    if (response.statusCode >= HttpStatus.badRequest) {
      if (response is StreamedResponse) {
        throw InfluxDBException.fromJson(
            await (response).stream.bytesToString(),
            response.statusCode,
            response.headers);
      } else if (response is Response) {
        throw InfluxDBException.fromJson(
            (response).body, response.statusCode, response.headers);
      } else {
        throw InfluxDBException.fromJson(
            response.toString(), response.statusCode, response.headers);
      }
    }

    //handle redirects
    if (maxRedirects < 0) {
      throw InfluxDBException(response.statusCode, null,
          'Too many HTTP redirects. Exceeded limit: ${influxDB.maxRedirects}');
    }

    if (influxDB.followRedirects &&
        [
          HttpStatus.temporaryRedirect,
          HttpStatus.permanentRedirect,
          HttpStatus.movedPermanently,
          HttpStatus.seeOther,
          HttpStatus.movedTemporarily,
        ].contains(response.statusCode)) {
      var location = response.headers['location'];
      if (location == null) {
        return Future.value(response);
      }

      var uriRedirect = Uri.parse(location);
      return _invoke(uriRedirect, method,
          headers: headers,
          body: body,
          maxRedirects: --maxRedirects,
          stream: stream);
    } else {
      return Future.value(response);
    }
  }
}

/// Log printer; defaults print log to console.
void Function(Object object) logPrint = print;

///
/// Main InfluxDB client class
///
class InfluxDBClient {
  static const int defaultMaxRedirects = 5;
  static const bool defaultFollowRedirects = true;
  static const bool defaultEnableDebug = false;

  ///
  /// Create a new client for a InfluxDB.
  ///
  /// Example:
  /// ```
  ///  var client = InfluxDBClient(
  ///     url: 'http://localhost:8086',
  ///     token: 'my-token',
  ///     org: 'my-org',
  ///     bucket: 'my-bucket'
  ///   );
  /// ```
  /// * [debug] - enable/disable verbose http call tracing
  /// * [username] and [password] is only for InfluxDB 1.8 compatibility
  ///
  InfluxDBClient(
      {String? url,
      String? token,
      String? bucket,
      String? org,
      Client? client,

      /// InfluxDB 1.x compatibility only
      String? username,

      /// InfluxDB 1.x compatibility only
      String? password,

      /// verbose logging of http calls
      this.debug = defaultEnableDebug,
      this.maxRedirects = defaultMaxRedirects,
      this.followRedirects = defaultFollowRedirects}) {
    this.url = url ?? const String.fromEnvironment('INFLUXDB_URL');
    this.token = token ?? const String.fromEnvironment('INFLUXDB_TOKEN');
    this.bucket = bucket ?? const String.fromEnvironment('INFLUXDB_BUCKET');
    this.org = org ?? const String.fromEnvironment('INFLUXDB_ORG');
    this.client = client ?? LoggingClient(debug, Client());

    // 1.8 compatibility token
    if (username != null && password != null && token == null) {
      this.token = '$username:$password';
    }
    defaultHeaders['User-Agent'] = '$clientName/$clientVersion';
  }

  ///
  /// Create a new client for InfluxDB 1.8 compatibility API.
  ///
  factory InfluxDBClient.connectV1(
      {String? url,

      /// Username for authentication
      String? username,

      /// Password for authentication
      String? password,

      /// Target database
      String? database,

      /// Target retention policy
      String? retentionPolicy,

      /// verbose logging of http calls
      bool debug = defaultEnableDebug,
      int maxRedirects = defaultMaxRedirects,
      bool followRedirects = defaultFollowRedirects}) {
    return InfluxDBClient(
        url: url,
        bucket: '$database/$retentionPolicy',
        username: username,
        password: password,
        debug: debug,
        maxRedirects: maxRedirects,
        followRedirects: followRedirects);
  }

  String? token;
  String? url;
  String? bucket;
  String? org;
  bool debug = defaultEnableDebug;
  int maxRedirects = defaultMaxRedirects;
  bool followRedirects = defaultFollowRedirects;

  late Client client;

  /// Closes the client and cleans up any resources associated with it.
  ///
  void close() {
    client.close();
  }

  Map<String, String> defaultHeaders = {};

  ApiClient getApiClient({String basePath = '/api/v2'}) {
    var api = ApiClient(basePath: url! + basePath);
    if (token != null) {
      var authentication =
          api.getAuthentication('TokenAuthentication') as ApiKeyAuth;
      authentication.apiKeyPrefix = 'Token';
      authentication.apiKey = token;
    }
    api.client = client;
    api._defaultHeaderMap.addAll(defaultHeaders);
    return api;
  }

  AuthorizationsApi getAuthorizationsApi() {
    return AuthorizationsApi(getApiClient());
  }

  BucketsApi getBucketsApi() {
    return BucketsApi(getApiClient());
  }

  @Deprecated('Use [getPingApi] instead')
  HealthApi getHealthApi() {
    return HealthApi(getApiClient(basePath: ''));
  }

  LabelsApi getLabelsApi() {
    return LabelsApi(getApiClient());
  }

  OrganizationsApi getOrganizationsApi() {
    return OrganizationsApi(getApiClient());
  }

  ReadyApi getReadyApi() {
    return ReadyApi(getApiClient(basePath: ''));
  }

  TasksApi getTasksApi() {
    return TasksApi(getApiClient());
  }

  UsersApi getUsersApi() {
    return UsersApi(getApiClient());
  }

  VariablesApi getVariablesApi() {
    return VariablesApi(getApiClient());
  }

  SetupApi getSetupApi() {
    return SetupApi(getApiClient());
  }

  SecretsApi getSecretsApi() {
    return SecretsApi(getApiClient());
  }

  DBRPsApi getDBRPsApi() {
    return DBRPsApi(getApiClient());
  }

  WriteService getWriteService([WriteOptions? writeOptions]) {
    return WriteService(this, writeOptions: writeOptions);
  }

  QueryService getQueryService({QueryOptions? queryOptions}) {
    return QueryService(this, queryOptions: queryOptions);
  }

  DeleteService getDeleteService() {
    return DeleteService(this);
  }

  PingApi getPingApi() {
    return PingApi(getApiClient(basePath: ''));
  }

  /// Create an InvokableScripts API instance.
  InvokableScriptsService getInvokableScriptsService() {
    return InvokableScriptsService(this);
  }
}

/// Logging wrapper for http client.
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
    if (debugEnabled) {
      send.then((r) {
        logPrint(
            '<< status: ${r.statusCode} - contentLength: ${r.contentLength}');
        logPrint('<< headers: ${_redacted(r.headers)}');
      });
    }
    return send;
  }

  @override
  void close() => delegate.close();

  void _traceRequest(BaseRequest request) {
    logPrint('>> ${request.method} ${request.url} =====');
    logPrint('>> headers: ${_redacted(request.headers)}');
    logPrint('>> contentLength: ${request.contentLength}');
  }

  Map<String, String> _redacted(Map<String, String> headers) {
    return headers.map((key, value) {
      return MapEntry(
          key, 'authorization' == key.toLowerCase() ? '***' : value);
    });
  }
}
