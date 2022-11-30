//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PingApi {
  PingApi(this.apiClient);

  final ApiClient apiClient;

  /// Get the status of the instance
  ///
  /// Retrieves the status and InfluxDB version of the instance.  Use this endpoint to monitor uptime for the InfluxDB instance. The response returns a HTTP `204` status code to inform you the instance is available.  #### InfluxDB Cloud  - Isn't versioned and doesn't return `X-Influxdb-Version` in the headers.  #### Related guides  - [Influx ping](https://docs.influxdata.com/influxdb/latest/reference/cli/influx/ping/)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPingWithHttpInfo() async {
    final path = r'/ping';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get the status of the instance
  ///
  /// Retrieves the status and InfluxDB version of the instance.  Use this endpoint to monitor uptime for the InfluxDB instance. The response returns a HTTP `204` status code to inform you the instance is available.  #### InfluxDB Cloud  - Isn't versioned and doesn't return `X-Influxdb-Version` in the headers.  #### Related guides  - [Influx ping](https://docs.influxdata.com/influxdb/latest/reference/cli/influx/ping/)
  Future<void> getPing() async {
    final response = await getPingWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get the status of the instance
  ///
  /// Returns the status and InfluxDB version of the instance.  Use this endpoint to monitor uptime for the InfluxDB instance. The response returns a HTTP `204` status code to inform you the instance is available.  #### InfluxDB Cloud  - Isn't versioned and doesn't return `X-Influxdb-Version` in the headers.  #### Related guides  - [Influx ping](https://docs.influxdata.com/influxdb/latest/reference/cli/influx/ping/)
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> headPingWithHttpInfo() async {
    final path = r'/ping';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'HEAD',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get the status of the instance
  ///
  /// Returns the status and InfluxDB version of the instance.  Use this endpoint to monitor uptime for the InfluxDB instance. The response returns a HTTP `204` status code to inform you the instance is available.  #### InfluxDB Cloud  - Isn't versioned and doesn't return `X-Influxdb-Version` in the headers.  #### Related guides  - [Influx ping](https://docs.influxdata.com/influxdb/latest/reference/cli/influx/ping/)
  Future<void> headPing() async {
    final response = await headPingWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
