import 'package:influxdb_client/api.dart';

/// enable HTTP tracing
bool debugEnabled = true;
/// check if a platform is WEB
const bool isWeb = identical(0, 0.0);

/// global test properties
late InfluxDBClient client;
late String orgName;
late Organization organization;

String generateBucketName() {
  var time = DateTime.now();
  return 'test_bucket_${time.millisecondsSinceEpoch}_IT';
}

Future<Bucket> createTestBucket() async {
  var org = organization;
  var bucketName = generateBucketName();
  var request =
      PostBucketRequest(orgID: org.id, name: bucketName, retentionRules: null);
  return await client.getBucketsApi().postBuckets(request);
}

Future<void> deleteTestBucket(Bucket bucket) {
  return client.getBucketsApi().deleteBucketsID(bucket.id!);
}

void setupClient() async {
  client = createClient();
  organization = await findMyOrg();
}

InfluxDBClient createClient() {
  final token =
      const String.fromEnvironment('INFLUXDB_API_TOKEN', defaultValue: 'my-token');
  orgName = const String.fromEnvironment('INFLUXDB_ORG', defaultValue: 'my-org');
  final url = const String.fromEnvironment('INFLUXDB_URL',
      defaultValue: 'http://localhost:8086');

  return InfluxDBClient(
      token: token,
      url: url,
      org: orgName,
      bucket: 'my-bucket',
      debug: debugEnabled);
}

Future<Organization> findMyOrg() async {
  var orgList = await (client.getOrganizationsApi().getOrgs());
  return (orgList.orgs!.firstWhere((org) => org.name == orgName));
}

void main() {}
