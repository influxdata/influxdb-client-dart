import 'package:influxdb_client/api.dart';

void main() async {
// Initialize Client and API
  var client = InfluxDBClient(
      url: 'http://localhost:8086', token: 'my-token', org: 'my-org');

  var healthCheck = await client.getHealthApi().getHealth();
  print('Health check: ${healthCheck.name}/${healthCheck.version} - ${healthCheck.message}');

  var ready = await client.getReadyApi().getReady();
  print('Ready check: ${ready.status}');

  var orgs = await client.getOrganizationsApi().getOrgs();
  var myOrgId = orgs.orgs.first.id;

  var bucketsApi = client.getBucketsApi();
  var bucketName = 'bucket-my-org';

  // find and delete bucket 'bucket-my-org'
  var buckets = await bucketsApi.getBuckets(name: bucketName);
  if (buckets.buckets.isNotEmpty) {
    var bucketID = buckets.buckets.first.id;
    await bucketsApi.deleteBucketsID(bucketID);
    print('Bucket $bucketID was deleted.');
  }

// Bucket configuration
  var request = PostBucketRequest(
      orgID: myOrgId,
      name: bucketName,
      retentionRules: [
        RetentionRule(type: RetentionRuleTypeEnum.expire, everySeconds: 3600)
      ]);

  var bucket = await bucketsApi.postBuckets(request);

// Create Authorization with permission to read/write created bucket
  var bucketResource =
      Resource(type: ResourceTypeEnum.buckets, id: bucket.id, orgID: myOrgId);

// Authorization configuration
  var auth = AuthorizationPostRequest(
      description: 'Authorization to read/write bucket:${bucket.name}',
      orgID: myOrgId,
      permissions: [
        Permission(action: PermissionActionEnum.read, resource: bucketResource),
        Permission(action: PermissionActionEnum.write, resource: bucketResource)
      ]);

// Create Authorization
  var authorizationsApi = client.getAuthorizationsApi();
  var authorization = await authorizationsApi.postAuthorizations(auth);

// Print token
  var token = authorization.token;
  print('The bucket: \'${bucket.name}\' is successfully created.');
  print('The following token can be used to read/write: ${token}');

  client.close();
}
