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
}
