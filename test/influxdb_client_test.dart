import 'package:influxdb_client/src/influxdb_client.dart';
import 'package:influxdb_client/src/write_service.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockInfluxDBClient extends Mock implements InfluxDBClient {}

void main() {
  InfluxDBClient influxdb;
  WriteService writeService;

  setUp(() {
    writeService = WriteService(influxdb);
  });

  setUpAll(() {
    final token =
        String.fromEnvironment('INFLUXDB_API_TOKEN', defaultValue: 'my-token');
    final org = String.fromEnvironment('INFLUXDB_ORG', defaultValue: 'my-org');
    final url = String.fromEnvironment('INFLUXDB_URL',
        defaultValue: 'http://localhost:8086');

    influxdb = InfluxDBClient(
        token: token, url: url, client: null, org: org, bucket: 'my-bucket');
    writeService = influxdb.writeService;
  });

  tearDownAll(() {
    influxdb.close();
  });

  test('writeRecord', () async {
    var response =
        await writeService.writeRecord('temperature,location=north value=60.0');
    print(response.body);
    expect(response.statusCode, 204);
    expect(response.body, '');
  });
}
