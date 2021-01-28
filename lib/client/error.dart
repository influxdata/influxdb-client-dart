// @dart=2.0

part of influxdb_client_api;

class InfluxDBException implements Exception {
  int statusCode;
  String code;
  String message;
  int retryAfter;

  InfluxDBException(this.statusCode, this.code, this.message, {this.retryAfter = -1});

  static InfluxDBException fromResponse(Response response) {
    return fromJson(response.body, response.statusCode, response.headers);
  }

  static InfluxDBException fromJson(
      String errorBody, int statusCode, Map<String, String> headers) {
    String code;
    String message;
    dynamic body;
    try {
      body = json.decode(errorBody);
    } catch (e) {
      message = errorBody;
    }
    var retryAfter;
    if (headers != null &&  headers[HttpHeaders.retryAfterHeader] != null) {
      try {
        retryAfter = int.parse(headers[HttpHeaders.retryAfterHeader]);
      } on FormatException {
        //ignore
      }
    }
    if (body != null) {
      if (body['message'] != null) {
        message = body['message'].toString();
      }
      if (body['code'] != null) {
        code = body['code'].toString();
      }

    }
    return InfluxDBException(statusCode, code, message, retryAfter: retryAfter);
  }

  @override
  String toString() {
    return 'InfluxDBException: statusCode = $statusCode, code = $code, message = $message';
  }
}
