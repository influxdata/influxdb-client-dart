
import 'package:http/http.dart' as http;
import 'package:influxdb_client/src/write_service.dart';

///
/// Superclass for all services.
///
abstract class AbstractService {
  final InfluxDBClient influxDB;

  const AbstractService(this.influxDB);
}
///
/// Main InfluxDB client class
///
class InfluxDBClient {
  InfluxDBClient({
    String url,
    String token,
    String bucket,
    String org,
    http.Client client,
  })  : url = url ?? String.fromEnvironment('INFLUXDB_URL'),
        token = token ?? String.fromEnvironment('INFLUXDB_TOKEN'),
        bucket = bucket ?? String.fromEnvironment('INFLUXDB_BUCKET'),
        org = org ?? String.fromEnvironment('INFLUXDB_ORG'),
        client = client ?? http.Client();

  String token;
  String url;
  String bucket;
  String org;

  http.Client client;
  WriteService _writeService;

  /// Service for write
  WriteService get writeService => _writeService ??= WriteService(this);

  void close() {
    client.close();
  }
}
