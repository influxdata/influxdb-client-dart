// @dart=2.0

/// Retry asynchronous functions with exponential backoff.
///
part of influxdb_client_api;

final _rand = math.Random();

/// Object holding options for retrying a function.
///
class RetryOptions {
  /// Include random milliseconds when retrying HTTP calls
  ///
  final Duration retryJitter;

  /// Maximum delay between retries
  final Duration maxDelay;

  /// First retry interval
  final Duration retryInterval;

  /// Maximum number of attempts before giving up, defaults to 8.
  final int maxRetries;

  /// Exponential base
  final int exponentialBase;

  /// Create a set of [RetryOptions].
  const RetryOptions({
    this.retryInterval = const Duration(milliseconds: 5000),
    this.retryJitter = const Duration(milliseconds: 200),
    this.exponentialBase = 5,
    this.maxDelay = const Duration(seconds: 180),
    this.maxRetries = 3,
  });

  /// Delay after [attempt] number of attempts.
  ///
  /// `retryInterval * exponentialBase^(attempts-1) + random(retryJitter)`
  Duration delay(int attempt, int retryAfter) {
    assert(attempt >= 0, 'attempt cannot be negative');

    if (attempt <= 0) {
      return Duration.zero;
    }
    final delay = Duration(
        milliseconds: (retryInterval.inMilliseconds *
            math.pow(exponentialBase, attempt - 1)) +
            (retryJitter.inMilliseconds * _rand.nextDouble()).toInt());

    if (retryAfter != null && retryAfter > 0) {
      return Duration(seconds: retryAfter);
    }

    var duration = delay < maxDelay ? delay : maxDelay;
    return duration;
  }

  Future<T> retry<T>(FutureOr<T> Function() fn, {
    FutureOr<bool> Function(Exception) retryIf,
    FutureOr<void> Function(Exception) onRetry,
  }) async {
    var attempt = 0;
    while (true) {
      attempt++;
      var retryAfter = -1;
      try {
        return await fn();
      } on Exception catch (e) {
        if (e is InfluxDBException) {
          retryAfter = e.retryAfter;
        }

        //first attempt is not counted as a retry
        if (attempt >= maxRetries + 1 ||
            (retryIf != null && !(await retryIf(e)))) {
          rethrow;
        }
        if (onRetry != null) {
          await onRetry(e);
        }
        var duration = delay(attempt, retryAfter);
        logPrint('The retryable error occurred during request. '
            'Reason: ${e} Attempt: ${attempt} '
            'Next retry in:  ${duration.inSeconds} s.)');
        // Sleep for a delay
        await Future.delayed(duration);
      }
    }
  }

  /// Checks if the exception is retryable
  Future<bool> isRetryable(Exception e) async {
    if (e is InfluxDBException && e.statusCode >= 429) {
      return true;
    }
    if (e is SocketException) {
      return true;
    }
    return false;
  }
}
