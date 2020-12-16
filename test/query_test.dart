import 'package:influxdb_client/api.dart';
import 'package:test/test.dart';

void main() {
  InfluxDBClient client;

  setUpAll(() {
    final token =
        String.fromEnvironment('INFLUXDB_API_TOKEN', defaultValue: 'my-token');
    final org = String.fromEnvironment('INFLUXDB_ORG', defaultValue: 'my-org');
    final url = String.fromEnvironment('INFLUXDB_URL',
        defaultValue: 'http://localhost:8086');

    client = InfluxDBClient(
        token: token,
        url: url,
        org: org,
        bucket: 'my-bucket',
        debugEnabled: true);
  });

  tearDownAll(() {
    client.close();
  });

  test('writeNonExistentBucket', () async {
    try {
      await WriteService(client).writeLineProtocol(
          'temperature,location=north value=60.0',
          bucket: 'not-existent');
      fail('Exception should be thrown');
    } on InfluxDBException catch (e) {
      expect(e.code, 'not found');
      expect(e.statusCode, 404);
      expect(e.message, 'bucket "not-existent" not found');
    }
  });

  test('queryRaw', () async {
    var queryService = QueryService(client);

    var rawCSV = await queryService.queryRaw('''
    from(bucket: "my-bucket")
  |> range(start: 0)
  |> filter(fn: (r) => r["_measurement"] == "temperature")
  
  ''');
    assert (rawCSV.length > 0);
  });
}
