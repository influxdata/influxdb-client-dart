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

  test('writeGzip', () async {
    organization = await findMyOrg();
    var bucket = await createTestBucket();
    var queryService =
        client.getQueryService(queryOptions: QueryOptions(gzip: true));

    await client.getWriteService(WriteOptions(gzip: true)).writeLineProtocol(
        'temperature,location=north value=999.0',
        bucket: bucket.name);

    var stream = await queryService.query('''
    from(bucket: "${bucket.name}")
  |> range(start: 0)
  |> filter(fn: (r) => r["_measurement"] == "temperature")
  ''');

    await stream.forEach((element) {
      expect(element['_value'], 999);
      expect(element['location'], 'north');
      expect(element['_measurement'], 'temperature');
    });

    await deleteTestBucket(bucket);
  });

  test('queryRaw', () async {
    var queryService = client.getQueryService();
    var bucket = await createTestBucket();

    var writeService = client.getWriteService();
    await writeService.write([
      'temperature,location=north value=999.0 1',
      'temperature,location=south value=111.0 2'
    ], bucket: bucket.name);

    var rawCSV = await queryService.queryRaw(
    '''
    from(bucket: "${bucket.name}") 
    |> range(start: 0) 
    |> filter(fn: (r) => r["_measurement"] == "temperature") 
    |> drop (columns: ["_start","_stop"]) 
    ''');
    expect(
        rawCSV,
        ',result,table,_time,_value,_field,_measurement,location\r\n'
        ',_result,0,1970-01-01T00:00:00.000000001Z,999,value,temperature,north\r\n'
        ',_result,1,1970-01-01T00:00:00.000000002Z,111,value,temperature,south\r\n'
        '\r\n');

    print(rawCSV);
    assert(rawCSV.isNotEmpty);

    await deleteTestBucket(bucket);
  });
}
