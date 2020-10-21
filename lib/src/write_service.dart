import 'package:http/http.dart';
import 'influxdb_client.dart';

class WriteService extends AbstractService {
  WriteService(InfluxDBClient influxdb) : super(influxdb);

  Future<Response> writeRecord(String record) {
    var headers = <String, String>{'Authorization': 'Token ' + influxDB.token};
    var uri = influxDB.url +
        '/api/v2/write?bucket=${influxDB.bucket}&org=${influxDB.org}';
    return influxDB.client.post(uri, body: record, headers: headers);
  }
}
