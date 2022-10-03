import 'dart:async';

import 'package:influxdb_client/api.dart';

void main() async {
  var client = InfluxDBClient(
    url: 'http://localhost:8086',
    token: 'my-token',
    org: 'my-org',
    bucket: 'my-bucket',
  );

  var writeApi = client.getWriteService(WriteOptions().merge(
      precision: WritePrecision.s,
      batchSize: 100,
      flushInterval: 5000,
      gzip: true));

  var point = Point('point')
      .addField('table', 'my-table')
      .addField('result', 3.14)
      .time(DateTime.now().toUtc());

  await writeApi.write(point);

  var queryService = client.getQueryService();

  var fluxQuery = '''
  from(bucket: "my-bucket")
  |> range(start: -1d)
  |> filter(fn: (r) => r["_measurement"] == "point")
  |> pivot(rowKey:["_time"], columnKey: ["_field"], valueColumn: "_value")
  ''';

  var recordStream = await queryService.query(fluxQuery);

  var recordValues = [];
  var recordRow = [];

  await recordStream.forEach((record) {
    recordValues.add(record.values.join(","));
    recordRow.add(record.row.join(", "));
  });

  print("-------------------------- record.values ---------------------------");
  print(recordValues.join("\n"));
  print("---------------------------- record.row ----------------------------");
  print(recordRow.join("\n"));

  await Future.delayed(Duration(seconds: 10));
  client.close();
}
