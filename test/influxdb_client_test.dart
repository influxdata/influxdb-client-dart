import 'package:influxdb_client/api.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockInfluxDBClient extends Mock implements InfluxDBClient {}

void main() {
  InfluxDBClient client;
  WriteService writeApi;

  setUp(() {
    writeApi = WriteService(client);
  });

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

    writeApi = WriteService(client);
  });

  tearDownAll(() {
    client.close();
  });

  test('urlTest', () async {
    var uri = Uri.http('localhost:8086', '/api/v2/write', {
      'precision': precisionToString(WritePrecision.ns),
      'bucket': 'my-bucket',
      'org': 'my-org'
    });

    expect(uri.toString(),
        'http://localhost:8086/api/v2/write?precision=ns&bucket=my-bucket&org=my-org');
  });

  test('writeRecord', () async {
    await writeApi
        .writeLineProtocol('temperature,location=north value=60.0');
  });

  test('writeNonExistentBucket', () async {
    try {
      await writeApi.writeLineProtocol(
          'temperature,location=north value=60.0',
          bucket: 'not-existent');
      fail('Exception should be thrown');
    } on InfluxDBException catch (e) {
      expect(e.code, 'not found');
      expect(e.statusCode, 404);
      expect(e.message, 'bucket "not-existent" not found');
    }
  });

  test('writeNonExistentBucketCatch', () async {
    await writeApi
        .writeLineProtocol('temperature,location=north value=60.0',
            bucket: 'not-existent')
        .catchError((e) => expect(e.message, 'bucket "not-existent" not found'))
        .whenComplete(() => print('Complete'));
  });

  test('write', () async {
    var p = Point('temperature');
    p.addTag('location', 'south');
    p.addField('value', 99.9);
    p.time(DateTime.now().toUtc());

    await writeApi
        .write(p, precision: WritePrecision.s)
        .whenComplete(() => 'Complete');
  });

  test('writeBatch', () async {
    writeApi = WriteService(client);

    var p = Point('temperature');
    p.addTag('location', 'south');
    p.addField('value', 99.9);
    p.time(DateTime.now().toUtc());

    writeApi.batchWrite(p, precision: WritePrecision.s);
    var future = writeApi.flush();

    expect(future, completion(equals(null)));
  });

  test('writeBatch2', () async {
    var writeOptions = WriteOptions(batchSize: 10);
    writeApi = WriteService(client, writeOptions: writeOptions);

    var pointCount = 100;

    for (var i = 1; i <= pointCount; i++) {
      var p = Point('temperature');
      p.addTag('location', 'south');
      p.addField('value', 99.9);
      p.addField('intValue', i);
      p.time(i);
      writeApi.batchWrite(p, precision: WritePrecision.s);
    }

    await expectLater(writeApi.flush(), completion(null));
  });
}

