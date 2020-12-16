// @dart=2.0

part of influxdb_client_api;

class InfluxDBException implements Exception {
  int statusCode;
  String code;
  String message;

  InfluxDBException(this.statusCode, this.code, this.message);

  @override
  String toString() {
    return 'InfluxDBError{statusCode: $statusCode, code: $code, message: $message}';
  }

  static InfluxDBException fromResponse(Response response) {
    String responseCode;
    String message;
    dynamic body;
    try {
      body = json.decode(response.body);
    } catch (e) {
      // ignore
    }
    if (body != null) {
      if (body['message'] != null) {
        message = body['message'].toString();
      }
      if (body['code'] != null) {
        responseCode = body['code'].toString();
      }
    }
    return InfluxDBException(response.statusCode, responseCode, message);
  }
}
