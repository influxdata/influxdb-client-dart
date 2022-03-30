import 'package:influxdb_client/api.dart';

/*
 *  warning: Invocable Scripts are supported only in InfluxDB Cloud, currently there is no support in InfluxDB OSS.
 */

void main() async {
  // Create InfluxDBClient
  var client = InfluxDBClient(
      url: 'https://us-west-2-1.aws.cloud2.influxdata.com',
      token: 'my-token',
      org: 'my-org',
      bucket: 'my-bucket',
      debug: true);

  //
  // Prepare data
  //
  var point1 = Point('my_measurement')
      .addTag('location', 'Prague')
      .addField('temperature', 25.3);
  var point2 = Point('my_measurement')
      .addTag('location', 'London')
      .addField('temperature', 24.3);
  await client.getWriteService().write([point1, point2]);

  client.close();
}
