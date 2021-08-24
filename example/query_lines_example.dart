import 'dart:async';

import 'package:influxdb_client/api.dart';

void main() async {
  var client = InfluxDBClient(
    url: 'http://localhost:8086',
    token: 'my-token',
    org: 'my-org',
    bucket: 'my-bucket',
  );

  var queryService = client.getQueryService();
  var fluxQuery = '''
  from(bucket: "my-bucket")
  |> range(start: -1d)
  |> filter(fn: (r) => r["_measurement"] == "cpu")
  |> filter(fn: (r) => r["cpu"] == "cpu-total")
  |> aggregateWindow(every: 1m, fn: mean, createEmpty: false)
  |> yield(name: "mean")
  ''';

  // listen csvStream
  var csvStream = await queryService.queryLines(fluxQuery);
  var n = 0;
  csvStream.listen((record) {
    print('${n++} -  $record');
  }, onError: (e) {
    print('Error $e');
  }, onDone: () {
    print('Done.');
  }, cancelOnError: true);

  await Future.delayed(Duration(seconds: 10));
  client.close();
}
