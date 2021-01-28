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

  // query to stream and iterate all records
  var count = 0;
  var recordStream = await queryService.query(fluxQuery);
  await recordStream.forEach((record) {
    print(
        'record: ${count++} ${record['_time']}: ${record['host']} ${record['cpu']} ${record['_value']}');
  });

  // query to raw CSV string
  var csvString = await queryService.queryRaw(fluxQuery);
  print(csvString);

  // listen stream and cancel streaming after condition
  var stream = await queryService.query(fluxQuery);
  var subscription;
  subscription = stream.listen((record) {
    print(
        'record: ${count++} ${record['_time']}: '
            '${record['host']} ${record['cpu']} ${record['_value']}');
    if (record.tableIndex > 5) {
      print('Cancel after 5 table');
      subscription.cancel();
    }
  }, onError: (e) {
    print('Error $e');
  }, onDone: () => print('Done.'), cancelOnError: true);

  await Future.delayed(Duration(seconds: 10));
  client.close();
}
