import 'dart:convert';
import 'package:csv/csv.dart';
import 'package:http/http.dart';
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

  test('queryRaw', () async {
    var fluxQuery = '''
    from(bucket: "my-bucket")
  |> range(start: 0)
  |> filter(fn: (r) => r["_measurement"] == "temperature")
  ''';

    var q = Query(query: fluxQuery, dialect: defaultDialect);

    var r = Request(
        'POST', Uri.parse('http://localhost:8086/api/v2/query?org=my-org'));

    r.body = jsonEncode(q.toJson());

    var headers = <String, String>{'Authorization': 'Token ' + client.token!};
    r.headers.addAll(headers);

    var resp = await client.client.send(r);

    resp.stream.transform(utf8.decoder).transform(CsvToListConverter()).listen(
        (value) {
      print('subscription $value');
    }, onError: (e, st) {
      print('Error !! $e');
    }, onDone: () {
      print('Done !!');
    }, cancelOnError: true);
  });

  test('queryRaw2', () async {
    var fluxQuery = '''
    from(bucket: "my-bucket")
  |> range(start: 0)
  |> filter(fn: (r) => r["_measurement"] == "temperature")
  ''';
    var q = Query(query: fluxQuery, dialect: defaultDialect);
    var r = Request(
        'POST', Uri.parse('http://localhost:8086/api/v2/query?org=my-org'));

    r.body = jsonEncode(q.toJson());
    var headers = <String, String>{'Authorization': 'Token ' + client.token!};
    r.headers.addAll(headers);
    var resp = await client.client.send(r);
    await resp.stream
        .transform(utf8.decoder)
        // .transform(new LineSplitter())
        .transform(CsvToListConverter())
        .forEach((element) {
          print('line: $element');
          print('---');
          if (element.length == 1) {
            print('STOP!!!');
            throw Exception('parse error stop streaming');
          }
        })
        .whenComplete(() => print('whenComplete'))
        .catchError((e) {
          print('catchError $e');
        });

    // sleep(Duration(seconds: 3));
  });

  test('queryLines', () async {
    var queryService = QueryService(client);
    var fluxQuery = '''
      from(bucket: "my-bucket")
        |> range(start: 0)
        |> filter(fn: (r) => r["_measurement"] == "temperature")
    ''';
    var queryLines = await queryService.queryLines(fluxQuery);
    queryLines.listen((event) {
      print(event);
    });
  });

  test('queryRecords', () async {
    var queryService = QueryService(client);
    var fluxQuery = '''
      from(bucket: "my-bucket")
      |> range(start: 0)
      |> filter(fn: (r) => r["_measurement"] == "temperature")
    ''';

    var queryLines = await queryService.query(fluxQuery);

    queryLines.listen((fluxRecord) {
      print(fluxRecord);
    });
  });

  test('queryError', () async {
    var queryService = QueryService(client);
    var fluxQuery = 'from(Xbucket: "my-bucket") |> range(start: 0)';
    expect(
        queryService.query(fluxQuery),
        throwsA(predicate((e) => (e is InfluxDBException &&
            e.statusCode == 400 &&
            e.message!.contains('found unexpected argument Xbucket')))));
  });

  test('queryUnauthorizedError', () async {
    var unauthorizedClient = InfluxDBClient(
        url: client.url, token: 'wrong_token', bucket: 'my-bucket');
    var queryService = unauthorizedClient.getQueryService();
    var fluxQuery = 'from(bucket: "my-bucket") |> range(start: 0)';
    expect(
        queryService.query(fluxQuery),
        throwsA(predicate((e) => (e is InfluxDBException &&
            e.statusCode == 401 &&
            e.code == 'unauthorized' &&
            e.message == 'unauthorized access'))));
  });

  test('queryUnauthorizedAsyncError', () async {
    var unauthorizedClient = InfluxDBClient(
        url: client.url, token: 'wrong_token', bucket: 'my-bucket');
    var queryService = unauthorizedClient.getQueryService();
    var fluxQuery = 'from(bucket: "my-bucket") |> range(start: 0)';
    expect(
        queryService.query(fluxQuery),
        throwsA(predicate((e) => (e is InfluxDBException &&
            e.statusCode == 401 &&
            e.code == 'unauthorized' &&
            e.message == 'unauthorized access'))));
  });

  test('queryGzip', () async {
    var queryService =
        client.getQueryService(queryOptions: QueryOptions(gzip: true));
    var fluxQuery = '''
      from(bucket: "my-bucket")
      |> range(start: 0)
      |> filter(fn: (r) => r["_measurement"] == "temperature")
    ''';
    var x = await queryService.queryRaw(fluxQuery);
    print(x);
  });

  test('queryGzipStream', () async {
    var queryService =
        client.getQueryService(queryOptions: QueryOptions(gzip: true));
    var fluxQuery = '''
      from(bucket: "my-bucket")
      |> range(start: 0)
      |> filter(fn: (r) => r["_measurement"] == "temperature")
    ''';
    var x = await queryService.query(fluxQuery);
    print(await x.toList());
  });
}
