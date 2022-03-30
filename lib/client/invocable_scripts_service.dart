part of influxdb_client_api;

/// Use API invokable scripts to create custom InfluxDB API endpoints that query,
/// process, and shape data.
///
/// API invokable scripts let you assign scripts to API endpoints and then
/// execute them as standard REST operations in InfluxDB Cloud.
class InvocableScriptsService extends DefaultService {
  late InvocableScriptsApi service;

  ///
  /// Creates [InvocableScriptsService] with optional custom [writeOptions]
  ///
  InvocableScriptsService(InfluxDBClient client) : super(client) {
    service = InvocableScriptsApi(client.getApiClient());
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
}
