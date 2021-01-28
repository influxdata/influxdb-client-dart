import 'package:influxdb_client/api.dart';

void main() async {
  var client = InfluxDBClient(
      url: 'http://localhost:8086',
      token: 'my-token',
      org: 'my-org',
      bucket: 'my-bucket',
      debug: true);

  var stop2 = DateTime.now().toUtc().toIso8601String();
  await client
      .getDeleteService()
      .delete(
          predicate: '_measurement="temperature"',
          start: '1970-01-01T00:00:00.000000001Z',
          stop: stop2,
          bucket: 'my-bucket',
          org: 'my-org')
      .catchError((e) => print(e));

  var queryService = client.getQueryService();

  var fluxQuery = '''
  from(bucket: "my-bucket")
  |> range(start: -1d)
  |> filter(fn: (r) => r["_measurement"] == "temperature")
  ''';

  // should be empty
  var records = await queryService.query(fluxQuery);
  assert(await records.isEmpty);

  client.close();
}
