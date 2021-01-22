import 'package:influxdb_client/api.dart';
import 'package:test/test.dart';
import 'commons_test.dart';

void main() async {
  WriteService writeApi;

  setUp(() {
    writeApi = client.getWriteService();
  });

  tearDown(() async {
   await writeApi.close();
  });

  setUpAll(() {
    setupClient();
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
    var ret = await writeApi
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
    var writeOptions = WriteOptions().merge(batchSize: 10);
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

  test('health', () async {
    var health = await client.getHealthApi().getHealth();
    print (health);
    expect(health.status.value ,'pass');
    expect(health.name, 'influxdb');
  });

  test('ready', () async {
    var ready = await client.getReadyApi().getReady();
    print (ready);
    expect(ready.status.value ,'ready');
    expect(ready.started.toIso8601String().isNotEmpty ,true);
  });

}

