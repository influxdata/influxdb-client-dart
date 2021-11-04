import 'dart:async';

import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:influxdb_client/api.dart';
import 'package:test/test.dart';
import 'package:universal_io/io.dart';

import 'commons_test.dart';

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
            expect(line, contains('Next retry in: 4s.'));
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

    test('testSocketExceptionRetryMaxTime', () async {
      var client = HttpClient();
      var onRetryCounter = 0;
      var invokeCounter = 0;

      var options = RetryOptions(
          maxTime: Duration(seconds: 30));
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
        print('EXCEPTION: ${e}');
        expect(e is RetryException, isTrue);
        expect(e.toString(), contains('Maximum retry time (30000ms) exceeded'));
        expect((e as RetryException).getCause(), isNotNull);
        expect((e).getCause() is SocketException, isTrue);
        expect((e).getCause().toString(), startsWith('SocketException: Failed host lookup'));
        // First call is not counted as a retry
        expect(invokeCounter, 4);
        expect(onRetryCounter, 3);
      }
    }, timeout: Timeout(Duration(seconds: 60)));

    test('testSocketExceptionRetryMaxAttempts', () async {
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
        expect(e is RetryException, isTrue);
        expect(e.toString(), contains('Maximum retry attempts reached'));
        expect((e as RetryException).getCause(), isNotNull);
        expect((e).getCause() is SocketException, isTrue);
        expect((e).getCause().toString(), startsWith('SocketException: Failed host lookup'));
        // First call is not counted as a retry
        expect(invokeCounter, 4);
        expect(onRetryCounter, 3);
      }
    });

    test('testDelaySequenceDefault', () async {
      var options = RetryOptions();
      var d = options.delay(1, null, null);
      expect(d >= Duration(seconds: 5) && d <= Duration(seconds: 10), isTrue);
      d = options.delay(2, null, null);
      expect(d >= Duration(seconds: 10) && d <= Duration(seconds: 20), isTrue);
      d = options.delay(3, null, null);
      expect(d >= Duration(seconds: 20) && d <= Duration(seconds: 40), isTrue);
      d = options.delay(4, null, null);
      expect(d >= Duration(seconds: 40) && d <= Duration(seconds: 80), isTrue);
      d = options.delay(5, null, null);
      expect(d >= Duration(seconds: 80) && d <= Duration(seconds: 125), isTrue);
    });

    test('testDelayRetryAfter', () async {
      var options = RetryOptions();
      var d = options.delay(1, 333, null);
      expect(d == Duration(seconds: 333), isTrue);
    });
  });
}
