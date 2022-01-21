import 'dart:async';
import 'dart:math';
import 'package:influxdb_client/api.dart';

void main() async {
  // Create InfluxDBClient
  var client = InfluxDBClient(
      url: 'http://localhost:8086',
      token: 'my-token',
      org: 'my-org',
      bucket: 'my-bucket',
      debug: true);

  // Create write service
  var writeApi = client.getWriteService(WriteOptions().merge(
      precision: WritePrecision.s,
      batchSize: 100,
      flushInterval: 5000,
      gzip: true));

  // Create data in list of point structure
  var data = List<Point>.empty(growable: true);
  var random = Random();
  for (var i = 0; i < 10; i++) {
    var temperature = random.nextInt(30);
    data.add(Point('weather')
        .addTag('location', 'Prague')
        .addField('temperature', temperature)
        .time(DateTime.now().subtract(Duration(days: i)).toUtc()));
  }

  // Write data to InfluxDB
  print(
      '\n\n-------------------------------- Write data -------------------------------\n');
  await writeApi.write(data).then((value) {
    print('Write completed 1');
  }).catchError((exception) {
    print('Handle write error here!');
    print(exception);
  });

  // Create Query service and query
  var queryService = client.getQueryService();
  var fluxQuery = '''
       from(bucket: "my-bucket")
            |> range(start: -20d)
            |> filter(fn: (r) => r["_measurement"] == "weather" 
                             and r["location"] == "Prague")''';

  // query to stream and iterate all records
  print(
      '\n\n---------------------------------- Query ---------------------------------\n');
  var recordStream = await queryService.query(fluxQuery);

  print(
      '\n\n------------------------------ Query result ------------------------------\n');
  await recordStream.forEach((record) {
    print(
        'Temperature in ${record['location']} at ${record['_time']} is ${record['_value']} °C');
  });

  // delete data
  print(
      '\n\n------------------------------- Delete data -------------------------------\n');
  await client
      .getDeleteService()
      .delete(
          predicate: '_measurement="weather"',
          start: DateTime.parse('1970-01-01T00:00:00Z'),
          stop: DateTime.now().toUtc(),
          bucket: 'my-bucket',
          org: 'my-org')
      .catchError((e) => print(e));

  await Future.delayed(Duration(seconds: 10));
  client.close();
}
