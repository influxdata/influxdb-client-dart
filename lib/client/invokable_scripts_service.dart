part of influxdb_client_api;

/// Use API invokable scripts to create custom InfluxDB API endpoints that query,
/// process, and shape data.
///
/// API invokable scripts let you assign scripts to API endpoints and then
/// execute them as standard REST operations in InfluxDB Cloud.
class InvokableScriptsService extends DefaultService {
  late InvokableScriptsApi service;

  ///
  /// Creates [InvokableScriptsService] with optional custom [writeOptions]
  ///
  InvokableScriptsService(InfluxDBClient client) : super(client) {
    service = InvokableScriptsApi(client.getApiClient());
  }

  /// Create a script.
  ///
  /// Parameters:
  ///
  /// * [ScriptCreateRequest] createRequest: The script to create. (required)
  Future<Script> createScript(ScriptCreateRequest createRequest) async {
    return service.postScripts(createRequest);
  }

  /// Update a script.
  ///
  /// Parameters:
  ///
  /// * [String] scriptId: The ID of the script to update. (required)
  /// * [ScriptUpdateRequest] updateRequest: Script updates to apply. (required)
  Future<Script> updateScript(
      String scriptId, ScriptUpdateRequest updateRequest) async {
    return service.patchScriptsID(scriptId, updateRequest);
  }

  /// Delete a script.
  ///
  /// Parameters:
  ///
  /// * [String] scriptId: The ID of the script to delete. (required)
  Future<void> deleteScript(String scriptId) async {
    return service.deleteScriptsID(scriptId);
  }

  /// List scripts
  ///
  /// Parameters:
  ///
  /// * [int] limit: The number of scripts to return.
  /// * [int] offset: The offset for pagination.
  Future<List<Script>> findScripts({int? limit, int? offset}) async {
    return service
        .getScripts(limit: limit, offset: offset)
        .then((value) => value.scripts ?? <Script>[]);
  }

  /// Invoke a script and return result as a stream of [FluxRecord].
  ///
  /// Parameters:
  ///
  /// * [String] scriptId: The ID of the script to invoke. (required)
  /// * [Map<String, Object>] params: Represents key/value pairs parameters to be injected into script
  Future<Stream<FluxRecord>> invokeScript(String scriptId,
      {Map<String, Object>? params}) async {
    return _invokeScript(scriptId, params: params).then((value) => utf8.decoder
        .bind(value.stream)
        .transform(CsvToListConverter())
        .transform(FluxTransformer(responseMode: FluxResponseMode.onlyNames)));
  }

  /// Invoke a script and return result as a row of CSV response.
  ///
  /// Parameters:
  ///
  /// * [String] scriptId: The ID of the script to invoke. (required)
  /// * [Map<String, Object>] params: Represents key/value pairs parameters to be injected into script
  Future<Stream<List<dynamic>>> invokeScriptLines(String scriptId,
      {Map<String, Object>? params}) async {
    return _invokeScript(scriptId, params: params).then((value) =>
        utf8.decoder.bind(value.stream).transform(CsvToListConverter()));
  }

  /// Invoke a script and return result as a raw string.
  ///
  /// Parameters:
  ///
  /// * [String] scriptId: The ID of the script to invoke. (required)
  /// * [Map<String, Object>] params: Represents key/value pairs parameters to be injected into script
  Future<String> invokeScriptRaw(String scriptId,
      {Map<String, Object>? params}) async {
    return service.postScriptsIDInvoke(scriptId,
        scriptInvocationParams: ScriptInvocationParams(params: params));
  }

  Future<StreamedResponse> _invokeScript(String scriptId,
      {Map<String, Object>? params}) {
    final path =
        r'/api/v2/scripts/{scriptID}/invoke'.replaceAll('{scriptID}', scriptId);
    return _post(path, {}, false, ScriptInvocationParams(params: params))
        .then((value) => value as StreamedResponse);
  }
}
