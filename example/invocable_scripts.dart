import 'package:influxdb_client/api.dart';

/*
 *  warning: Invocable Scripts are supported only in InfluxDB Cloud, currently there is no support in InfluxDB OSS.
 */

void main() async {
  // Create InfluxDBClient
  var url = 'https://us-west-2-1.aws.cloud2.influxdata.com';
  var bucket = 'my-bucket';
  var token = 'my-token';
  var org = 'my-org';
  var client = InfluxDBClient(url: url, token: token, org: org, bucket: bucket);

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

  var scriptsService = client.getInvocableScriptsService();

  //
  // Create Invocable Script
  //
  print('\n------- Create -------\n');
  var scriptQuery =
      'from(bucket: params.bucket_name) |> range(start: -30d) |> limit(n:2)';
  var createRequest = ScriptCreateRequest(
      name: 'my_script_${DateTime.now().millisecondsSinceEpoch}',
      description: 'my first try',
      language: ScriptLanguage.flux,
      script: scriptQuery);

  var createdScript = await scriptsService.createScript(createRequest);
  print(createdScript);

  //
  // Update Invocable Script
  //
  print('\n------- Update -------\n');
  var updateRequest =
      ScriptUpdateRequest(description: 'my updated description');
  createdScript =
      await scriptsService.updateScript(createdScript.id!, updateRequest);
  print(createdScript);

  //
  // Invoke a script
  //

  // Stream of FluxRecords
  print('\n------- Invoke to Stream of FluxRecords -------\n');
  var records = await scriptsService
      .invokeScript(createdScript.id!, params: {'bucket_name': bucket});
  await records.forEach((record) {
    print(
        '${record['_time']} ${record['location']}: ${record['_field']} ${record['_value']}');
  });

  // Stream of CSV rows
  print('\n------- Invoke to Stream of CSV rows -------\n');
  var rows = await scriptsService
      .invokeScriptLines(createdScript.id!, params: {'bucket_name': bucket});
  await rows.forEach((row) {
    print(row);
  });

  // Raw
  print('\n------- Invoke to Raw-------\n');
  var raw = await scriptsService
      .invokeScriptRaw(createdScript.id!, params: {'bucket_name': bucket});
  print('RAW output:\n ${raw}');

  //
  // List scripts
  //
  print('\n------- List -------\n');
  var scripts = await scriptsService.findScripts();
  scripts.forEach((script) {
    print(
        ' ---\n ID: ${script.id}\n Name: ${script.name}\n Description: ${script.description}');
  });
  print('---');

  //
  // Delete previously created Script
  //
  print('\n------- Delete -------\n');
  await scriptsService.deleteScript(createdScript.id!);
  print("Successfully deleted script: '${createdScript.name}'");

  client.close();
}
