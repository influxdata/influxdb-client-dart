import 'package:csv/csv.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:influxdb_client/api.dart';
import 'package:test/test.dart';
import 'commons_test.dart';

var EOL = defaultEol; //'\r\n'

var oneTable = '#datatype,string,long,dateTime:RFC3339,dateTime:RFC3339,dateTime:RFC3339,long,string,string,string$EOL'
        '#group,false,false,true,true,false,false,true,true,true$EOL'
        '#default,_result,,,,,,,,$EOL' +
    ',result,table,_start,_stop,_time,_value,_field,_measurement,host$EOL' +
    ',,0,2019-11-12T08:09:04.795385031Z,2019-11-12T08:09:09.795385031Z,2019-11-12T08:09:05Z,11125907456,used,mem,mac.local$EOL' +
    ',,0,2019-11-12T08:09:04.795385031Z,2019-11-12T08:09:09.795385031Z,2019-11-12T08:09:06Z,11127103488,used,mem,mac.local$EOL' +
    ',,0,2019-11-12T08:09:04.795385031Z,2019-11-12T08:09:09.795385031Z,2019-11-12T08:09:07Z,11127291904,used,mem,mac.local$EOL' +
    ',,0,2019-11-12T08:09:04.795385031Z,2019-11-12T08:09:09.795385031Z,2019-11-12T08:09:08Z,11126190080,used,mem,mac.local$EOL' +
    ',,0,2019-11-12T08:09:04.795385031Z,2019-11-12T08:09:09.795385031Z,2019-11-12T08:09:09Z,11127832576,used,mem,mac.local$EOL';
var multipleQueries = '#datatype,string,long,string,string,dateTime:RFC3339,dateTime:RFC3339,dateTime:RFC3339,double,string$EOL' +
    '#group,false,false,true,true,true,true,false,false,true$EOL' +
    '#default,t1,,,,,,,,$EOL' +
    ',result,table,_field,_measurement,_start,_stop,_time,_value,tag$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:20:00Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:21:40Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:23:20Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:25:00Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:26:40Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:28:20Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:30:00Z,2,test1$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:20:00Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:21:40Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:23:20Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:25:00Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:26:40Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:28:20Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:30:00Z,2,test2$EOL' +
    '$EOL' +
    '#datatype,string,long,string,string,dateTime:RFC3339,dateTime:RFC3339,dateTime:RFC3339,double,string$EOL' +
    '#group,false,false,true,true,true,true,false,false,true$EOL' +
    '#default,t2,,,,,,,,$EOL' +
    ',result,table,_field,_measurement,_start,_stop,_time,_value,tag$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:20:00Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:21:40Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:23:20Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:25:00Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:26:40Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:28:20Z,2,test1$EOL' +
    ',,0,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:30:00Z,2,test1$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:20:00Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:21:40Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:23:20Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:25:00Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:26:40Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:28:20Z,2,test2$EOL' +
    ',,1,value,dart_client_test,2010-02-27T04:48:32.752600083Z,2020-02-27T16:48:32.752600083Z,2020-02-27T16:30:00Z,2,test2';

void main() {
  setUpAll(() {
    setupClient();
  });

  tearDownAll(() {
    client.close();
  });

  test('queryOneTable', () async {
    var mockClient = MockClient((request) async {
      return Response(oneTable, 200);
    });

    client.client = mockClient;

    var query = '''from(bucket: 'my-bucket') 
        |> range(start: -5s, stop: now()) 
        |> filter(fn: (r) => r._measurement == 'mem') 
        |> filter(fn: (r) => r._field == 'used')
        ''';
    var resp = await client.getQueryService().queryRaw(query);
    expect(resp, oneTable);
  });

  test('queryRawParameterized', () async {
    var mockClient = MockClient((request) async {
      return Response(oneTable, 200);
    });

    client.client = mockClient;

    var query = '''from(bucket: params.bucketParam) 
        |> range(start: duration(v: params.startParam), stop: now()) 
        |> filter(fn: (r) => r._measurement == 'mem') 
        |> filter(fn: (r) => r._field == 'used')
        ''';
    var queryParams = {'bucketParam': 'my-bucket', 'startParam': '-5s'};

    var resp =
        await client.getQueryService().queryRaw(query, params: queryParams);
    expect(resp, oneTable);
  });

  test('queryRawParameterizedClass', () async {
    var mockClient = MockClient((request) async {
      return Response(oneTable, 200);
    });

    client.client = mockClient;

    var queryString = '''from(bucket: params.bucketParam) 
        |> range(start: duration(v: params.startParam), stop: now()) 
        |> filter(fn: (r) => r._measurement == 'mem') 
        |> filter(fn: (r) => r._field == 'used')
        ''';
    var queryParams = {'bucketParam': 'my-bucket', 'startParam': '-5s'};
    var query = Query(query: queryString, params: queryParams);

    var resp = await client.getQueryService().queryRaw(query);
    expect(resp, oneTable);
  });

  test('queryOneTableStream', () async {
    var mockClient = MockClient((request) async {
      return Response(oneTable, 200);
    });

    client.client = mockClient;

    var query = '''from(bucket: 'my-bucket') 
        |> range(start: -5s, stop: now()) 
        |> filter(fn: (r) => r._measurement == 'mem') 
        |> filter(fn: (r) => r._field == 'used')
        ''';
    var resp = await client.getQueryService().queryLines(query);

    // resp.listen((event) { print('->> $event');});

    var list = await resp.toList();

    list.forEach((element) {
      print('-> $element');
    });
    expect(list.length, 9);
  });

  test('queryStreamParameterized', () async {
    var mockClient = MockClient((request) async {
      return Response(oneTable, 200);
    });

    client.client = mockClient;

    var query = '''from(bucket: params.bucketParam) 
        |> range(start: duration(v: params.startParam), stop: now()) 
        |> filter(fn: (r) => r._measurement == 'mem') 
        |> filter(fn: (r) => r._field == 'used')
        ''';
    var queryParams = {'bucketParam': 'my-bucket', 'startParam': '-5s'};
    var resp =
        await client.getQueryService().queryLines(query, params: queryParams);

    var list = await resp.toList();

    list.forEach((element) {
      print('-> $element');
    });
    expect(list.length, 9);
  });

  test('queryStreamParameterizedClass', () async {
    var mockClient = MockClient((request) async {
      return Response(oneTable, 200);
    });

    client.client = mockClient;

    var queryString = '''from(bucket: params.bucketParam) 
        |> range(start: duration(v: params.startParam), stop: now()) 
        |> filter(fn: (r) => r._measurement == 'mem') 
        |> filter(fn: (r) => r._field == 'used')
        ''';
    var queryParams = {'bucketParam': 'my-bucket', 'startParam': '-5s'};
    var query = Query(query: queryString, params: queryParams);
    var resp =
        await client.getQueryService().queryLines(query, params: queryParams);

    var list = await resp.toList();

    list.forEach((element) {
      print('-> $element');
    });
    expect(list.length, 9);
  });

  test('queryOneTableFluxRecord', () async {
    var mockClient = MockClient((request) async {
      return Response(oneTable, 200);
    });

    client.client = mockClient;

    var query = '''from(bucket: 'my-bucket') 
        |> range(start: -5s, stop: now()) 
        |> filter(fn: (r) => r._measurement == 'mem') 
        |> filter(fn: (r) => r._field == 'used')
        ''';
    var resp = await client.getQueryService().query(query);

    var res = await resp.toList();
    for (var r in res) {
      print(r);
      expect(r['table'], 0);
      expect(r['_measurement'], 'mem');
      expect(r['host'], 'mac.local');
    }

    expect(res[0]['_value'], 11125907456);
    expect(res[0]['_time'], '2019-11-12T08:09:05Z');
    expect(res[1]['_value'], 11127103488);
    expect(res[1]['_time'], '2019-11-12T08:09:06Z');
    expect(res[2]['_value'], 11127291904);
    expect(res[2]['_time'], '2019-11-12T08:09:07Z');
    expect(res[3]['_value'], 11126190080);
    expect(res[3]['_time'], '2019-11-12T08:09:08Z');
    expect(res[4]['_value'], 11127832576);
    expect(res[4]['_time'], '2019-11-12T08:09:09Z');
  });

  test('queryFluxRecordParameterized', () async {
    var mockClient = MockClient((request) async {
      return Response(oneTable, 200);
    });

    client.client = mockClient;

    var query = '''from(bucket: params.bucketParam) 
        |> range(start: duration(v: params.startParam), stop: now()) 
        |> filter(fn: (r) => r._measurement == 'mem') 
        |> filter(fn: (r) => r._field == 'used')
        ''';
    var queryParams = {'bucketParam': 'my-bucket', 'startParam': '-5s'};
    var resp = await client.getQueryService().query(query, params: queryParams);

    var res = await resp.toList();
    for (var r in res) {
      print(r);
      expect(r['table'], 0);
      expect(r['_measurement'], 'mem');
      expect(r['host'], 'mac.local');
    }

    expect(res[0]['_value'], 11125907456);
    expect(res[0]['_time'], '2019-11-12T08:09:05Z');
    expect(res[1]['_value'], 11127103488);
    expect(res[1]['_time'], '2019-11-12T08:09:06Z');
    expect(res[2]['_value'], 11127291904);
    expect(res[2]['_time'], '2019-11-12T08:09:07Z');
    expect(res[3]['_value'], 11126190080);
    expect(res[3]['_time'], '2019-11-12T08:09:08Z');
    expect(res[4]['_value'], 11127832576);
    expect(res[4]['_time'], '2019-11-12T08:09:09Z');
  });

  test('queryFluxRecordParameterizedClass', () async {
    var mockClient = MockClient((request) async {
      return Response(oneTable, 200);
    });

    client.client = mockClient;

    var queryString = '''from(bucket: params.bucketParam) 
        |> range(start: duration(v: params.startParam), stop: now()) 
        |> filter(fn: (r) => r._measurement == 'mem') 
        |> filter(fn: (r) => r._field == 'used')
        ''';
    var queryParams = {'bucketParam': 'my-bucket', 'startParam': '-5s'};
    var query = Query(query: queryString, params: queryParams);
    var resp = await client.getQueryService().query(query, params: queryParams);

    var res = await resp.toList();
    for (var r in res) {
      print(r);
      expect(r['table'], 0);
      expect(r['_measurement'], 'mem');
      expect(r['host'], 'mac.local');
    }

    expect(res[0]['_value'], 11125907456);
    expect(res[0]['_time'], '2019-11-12T08:09:05Z');
    expect(res[1]['_value'], 11127103488);
    expect(res[1]['_time'], '2019-11-12T08:09:06Z');
    expect(res[2]['_value'], 11127291904);
    expect(res[2]['_time'], '2019-11-12T08:09:07Z');
    expect(res[3]['_value'], 11126190080);
    expect(res[3]['_time'], '2019-11-12T08:09:08Z');
    expect(res[4]['_value'], 11127832576);
    expect(res[4]['_time'], '2019-11-12T08:09:09Z');
  });

  test('queryMultipleTableFluxRecord', () async {
    var mockClient = MockClient((request) async {
      return Response(multipleQueries, 200);
    });

    client.client = mockClient;

    var query = '''from(bucket: 'my-bucket') 
        |> range(start: -5s, stop: now()) 
        |> filter(fn: (r) => r._measurement == 'mem') 
        |> filter(fn: (r) => r._field == 'used')
        ''';
    var resp = await client.getQueryService().query(query);

    var res = await resp.toList();
    var i = 0;
    for (var r in res) {
      print('${i} : ${r.tableIndex} -> $r');
      if (i >= 0 && i < 14) {
        expect(r['result'], 't1');
      } else if (i >= 14 && i < 28) {
        expect(r['result'], 't2');
      }
      ;
      expect(r['_measurement'], 'dart_client_test');
      expect(r['_value'], 2);
      i++;
    }
    expect(res[27]['_time'], '2020-02-27T16:30:00Z');
    expect(res[27]['tag'], 'test2');
    expect(res.length, 28);
  });

  test('infinityValues', () async {
    var mockClient = MockClient((request) async {
      var body = '#group,false,false,true,true,true,true,true,true,true,true,false,false$EOL' +
          '#datatype,string,long,dateTime:RFC3339,dateTime:RFC3339,string,string,string,string,string,string,double,double$EOL' +
          '#default,_result,,,,,,,,,,,$EOL' +
          ',result,table,_start,_stop,_field,_measurement,language,license,name,owner,le,_value$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,0,0$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,10,0$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,20,0$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,30,0$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,40,0$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,50,0$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,60,0$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,70,0$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,80,0$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,90,0$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,+Inf,15$EOL' +
          ',,0,2021-06-23T06:50:11.897825012Z,2021-06-25T06:50:11.897825012Z,stars,github_repository,C#,MIT License,influxdb-client-csharp,influxdata,-Inf,15$EOL';
      return Response(body, 200);
    });

    client.client = mockClient;

    var query = '''from(bucket: 'my-bucket')''';
    var resp = await client.getQueryService().query(query);

    var res = await resp.toList();
    expect(res.length, 12);

    expect(res[10]['le'], double.infinity);
    expect(res[11]['le'], -double.infinity);
  });

  test('contentType', () async {
    var mockClient = MockClient((request) async {
      expect(
          request.headers['Content-Type'], 'application/json; charset=utf-8');
      return Response(oneTable, 200);
    });

    client.client = mockClient;

    var query = "from(bucket: 'my-bucket') |> range(start: -5s, stop: now())";
    var resp = await client.getQueryService().query(query);

    var _ = await resp.toList();
  });
}
