import 'package:influxdb_client/api.dart';
import 'package:test/test.dart';
import 'commons_test.dart';


void main() {
  setUpAll(() {
    setupClient();
  });

  tearDownAll(() {
    client.close();
  });

  test('writeNonExistentBucket', () async {
    try {
      await client.getWriteService().writeLineProtocol(
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
    var queryService = client.getQueryService();
    var rawCSV = await queryService.queryRaw('''
    from(bucket: "my-bucket")
  |> range(start: 0)
  |> filter(fn: (r) => r["_measurement"] == "temperature")
  
  ''');
    print(rawCSV);
    assert (rawCSV.isNotEmpty);
  });
}
