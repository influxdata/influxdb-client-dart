import 'dart:async';
import 'dart:io';

import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:influxdb_client/api.dart';
import 'commons_test.dart';

import 'package:test/test.dart';

void main() {

  setUpAll(() {
    setupClient();
  });

  tearDown(() {
    client.close();
    logPrint = print;
  });


  group('RetryTest', () {
    test('test429', () async {
      
      logPrint = (line) {
        print(line);
        if (line is String) {
          if (line.startsWith('>>') || line.startsWith('<<')) {
            return;
          }
            expect(line, contains('Next retry in:  4 s.'));
        }
      };
      var mockClient = MockClient((request) async {
        return Response('', 429, headers: {'retry-after': '4'});
      });

      setupClient();
      client.client = mockClient;
      var writeService = client.getWriteService();

      try {
        await writeService.write(
                  'temperature,location=north value=60.0',
                  bucket: 'my-bucket');
      } catch (e) {
        print(e);
      }

    });

    test('testSocketExceptionRetry', () async {
      var client = HttpClient();
      var onRetryCounter = 0;
      var invokeCounter = 0;

      var options = RetryOptions(
          retryInterval: Duration(seconds: 2),
          retryJitter: Duration(milliseconds: 0),
          maxRetries: 3,
          exponentialBase: 2);
      try {
        await options.retry(
            // Make a GET request
            () async {
              print('Call # ${++invokeCounter}');
              final request = await client
                  .getUrl(Uri.parse('https://XXX.YYY.ZZZ'))
                  .timeout(Duration(seconds: 5));
              final response =
                  await request.close().timeout(Duration(seconds: 5));
              await response.drain();
              return response.statusCode;
            },
            // Retry on SocketException or TimeoutException
            retryIf: (e) => e is SocketException || e is TimeoutException,
            onRetry: (e) {
              print('onRetry: ${e}');
              onRetryCounter++;
              return true;
            });
      } catch (e) {
        expect(e.toString(), startsWith('SocketException: Failed host lookup'));
        //first call is not counted as a retry
        expect(invokeCounter, 4);
        expect(onRetryCounter, 3);
      }
    });
  });
}
