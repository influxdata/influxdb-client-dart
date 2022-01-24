import 'dart:async';
import 'dart:math';
import 'package:influxdb_client/api.dart';

/*
 *  warning: Parameterized Queries are supported only in InfluxDB Cloud, currently there is no support in InfluxDB OSS.
 */

void main() async {
  // Create InfluxDBClient
  var client = InfluxDBClient(
      url: 'https://us-west-2-1.aws.cloud2.influxdata.com',
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

  // Write data to InfluxDB
  var data = List<Point>.empty(growable: true);
  var random = Random();
  for (var i = 0; i < 5; i++) {
    var temperature = random.nextInt(30);
    data.add(Point('weather')
        .addTag('location', 'Prague')
        .addField('temperature', temperature)
        .time(DateTime.now().subtract(Duration(days: i)).toUtc()));
  }
  await writeApi.write(data);

  // Create Query service and query
  var queryService = client.getQueryService();
  var queryString = '''
       from(bucket: params.bucketParam)
            |> range(start: duration(v: params.startParam))
            |> filter(fn: (r) => r["_measurement"] == "weather" 
                             and r["location"] == "Prague")''';
  var queryParams = {'bucketParam':'my-bucket', 'startParam':'-10d'};

  // Using string for query and Map for params
  print(
      '\n\n------------------------------ Map params ------------------------------\n');
  var recordStream = await queryService.query(queryString, params: queryParams);
  print(
      '\n            --------------------- Result ---------------------            \n');
  await recordStream.forEach((record) {
    print('\t\t  Temperature in ${record['location']} at ${record['_time']} is ${record['_value']} °C');
  });

  // Using Query class
  print(
      '\n\n------------------------------ Query class ------------------------------\n');
  var query = Query(query: queryString, params: queryParams);
  recordStream = await queryService.query(query);
  print(
      '\n            --------------------- Result ---------------------            \n');
  await recordStream.forEach((record) {
    print('\t\t  Temperature in ${record['location']} at ${record['_time']} is ${record['_value']} °C');
  });

  await Future.delayed(Duration(seconds: 10));
  client.close();
}
