import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:influxdb_client/api.dart';
import 'package:test/test.dart';

import 'commons_test.dart';
import 'query_test.dart';

void main() {
  group('RedirectTest', () {
    test('testRedirect', () async {
      var responses = [
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 204),

        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response(oneTable, 204),

        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response(oneTable, 204),

      ];
      var counter = 0;
      var mockClient = MockClient((request) async {
        return responses[counter++];
      });

      client = InfluxDBClient(
          token: 'my-token',
          url: 'http://localhost:8086',
          org: 'my-org',
          bucket: 'my-bucket',
          followRedirects: true,
          maxRedirects: 2,
          debug: debugEnabled);

      client.client = mockClient;
      var writeService = client.getWriteService();

      await expectLater(
          writeService.write('temperature,location=north value=60.0',
              bucket: 'my-bucket'),
          completion(null));

      var query = '''from(bucket: 'my-bucket') 
        |> range(start: -5s, stop: now()) 
        |> filter(fn: (r) => r._measurement == 'mem') 
        |> filter(fn: (r) => r._field == 'used')
        ''';

      var stream = await client.getQueryService().query(query);

      expect(await stream.length, 5);

      // stream.toList((element) {
      //   print(element);
      // });

    });

    test('testMaxRedirects', () async {
      var responses = [
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 204),
      ];
      var counter = 0;
      var mockClient = MockClient((request) async {
        return responses[counter++];
      });

      client = createClient();
      client.debug = true;
      client.client = mockClient;
      var writeService = client.getWriteService();

      await expectLater(
          writeService.write('temperature,location=north value=60.0',
              bucket: 'my-bucket'),
          completion(null));
    });

    test('testMaxRedirectsExceeded', () async {
      var responses = [
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 204),
      ];
      var counter = 0;
      var mockClient = MockClient((request) async {
        return responses[counter++];
      });
      client = client = InfluxDBClient(
          token: 'my-token',
          url: 'http://localhost:8086',
          org: 'my-org',
          bucket: 'my-bucket',
          followRedirects: true,
          maxRedirects: 3,
          debug: debugEnabled);

      client.debug = true;
      client.client = mockClient;
      var writeService = client.getWriteService();

      try {
        await writeService.write('temperature,location=north value=60.0',
            bucket: 'my-bucket');
        fail('expected exception');
      } on InfluxDBException catch (e) {
        expect(e.message, 'Too many HTTP redirects. Exceeded limit: 3');
      }
      ;
    });

    test('disableFollowRedirect', () async {
      var responses = [
        Response('', 307,
            headers: {'location': 'http://localhost:8086'}, isRedirect: true),
        Response('', 204),
      ];
      var counter = 0;
      var mockClient = MockClient((request) async {
        return responses[counter++];
      });
      client = client = InfluxDBClient(
          token: 'my-token',
          url: 'http://localhost:8086',
          org: 'my-org',
          bucket: 'my-bucket',
          followRedirects: false,
          maxRedirects: 3,
          debug: debugEnabled);

      client.debug = true;
      client.client = mockClient;
      var writeService = client.getWriteService();

      try {
        await writeService.write('temperature,location=north value=60.0',
            bucket: 'my-bucket');
        fail('expected exception');
      } on InfluxDBException catch (e) {
        expect(e.message,
            '204 HTTP response status code expected, but 307 returned');
      }
      ;
    });
  });
}
