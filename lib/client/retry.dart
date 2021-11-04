/// Retry asynchronous functions with exponential random backoff strategy.
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

  /// Maximum retry time
  final Duration maxTime;

  /// First retry interval
  final Duration retryInterval;

  /// Maximum number of attempts before giving up, defaults to 5.
  final int maxRetries;

  /// Exponential base
  final int exponentialBase;

  /// Create a set of [RetryOptions].
  const RetryOptions({
    this.retryJitter = const Duration(milliseconds: 0),
    this.maxDelay = const Duration(seconds: 125),
    this.maxTime = const Duration(seconds: 180),
    this.retryInterval = const Duration(seconds: 5),
    this.maxRetries = 5,
    this.exponentialBase = 2,
  });

  /// Delay after [attempt] number of attempts.
  ///
  /// The next delay is computed as random value between range
  /// `retry_interval * exponential_base^(attempts-1)` and `retry_interval * exponential_base^(attempts)
  /// Example: for retry_interval=5, exponential_base=2, max_retry_delay=125, total=5
  /// retry delays are random distributed values within the ranges of
  /// [5-10, 10-20, 20-40, 40-80, 80-125]
  Duration delay(int attempt, int? retryAfter, DateTime? deadline) {
    assert(attempt >= 0, 'attempt cannot be negative');

    if (attempt <= 0) {
      return Duration.zero;
    } else if (attempt > maxRetries) {
      throw RetryException('Retry attempt beyond limit (${maxRetries})');
    }

    final rand = _rand.nextDouble();

    if (retryAfter != null && retryAfter > 0) {
      final addMilliseconds = (retryJitter.inMilliseconds * rand).toInt();
      return Duration(seconds: retryAfter, milliseconds: addMilliseconds);
    }

    var rangeStart =
        retryInterval.inMilliseconds * math.pow(exponentialBase, attempt - 1);
    var rangeStop =
        retryInterval.inMilliseconds * math.pow(exponentialBase, attempt);
    if (rangeStop > maxDelay.inMilliseconds) {
      rangeStop = maxDelay.inMilliseconds;
    }
    final num add = (rangeStop - rangeStart) * rand;
    var duration = Duration(milliseconds: (rangeStart + add).toInt());
    if (deadline != null) {
      final diff = deadline.difference(DateTime.now());
      if (duration > diff) {
        duration = diff;
        if (duration < Duration.zero) {
          duration = Duration.zero;
        }
      }
    }

    return duration;
  }

  Future<T> retry<T>(
    FutureOr<T> Function() fn, {
    FutureOr<bool> Function(Exception)? retryIf,
    FutureOr<void> Function(Exception)? onRetry,
  }) async {
    final deadline = DateTime.now().add(maxTime);
    var attempt = 0;
    while (true) {
      attempt++;
      try {
        return await fn();
      } on Exception catch (e) {
        int? retryAfter = -1;
        if (e is InfluxDBException) {
          retryAfter = e.retryAfter;
        }

        // Bail out immediately if not retryable
        if (retryIf != null && !(await retryIf(e))) {
          rethrow;
        }

        // Bail out when max number of retries was reached (first attempt is not counted as a retry)
        if (attempt >= maxRetries + 1) {
          throw RetryException('Maximum retry attempts reached', e);
        }

        // Bail out when max retry time is exceeded
        if (DateTime.now().isAfter(deadline)) {
          throw RetryException(
              'Maximum retry time (${maxTime.inMilliseconds}ms) exceeded', e);
        }

        // Execute handler if any
        if (onRetry != null) {
          await onRetry(e);
        }

        // Sleep for suggested delay but respect timeout
        final duration = delay(attempt, retryAfter, deadline);
        logPrint('The retryable error occurred during request. '
            'Reason: ${e} Attempt: ${attempt} '
            'Next retry in: ${duration.inSeconds}s. (${duration.toString()})');
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
