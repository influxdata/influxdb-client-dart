import 'package:influxdb_client/api.dart';
import 'package:test/test.dart';
import 'commons_test.dart';

void main() {
  Bucket bucket;

  setUp(() async {
    setupClient();

    organization = await findMyOrg();
    var bucketsApi = client.getBucketsApi();
    var buckets = await bucketsApi.getBuckets();

    for (var bucket in buckets.buckets) {
      if (bucket.name.endsWith('_IT')) {
        print('Delete Bucket: ${bucket.name}');
        await bucketsApi.deleteBucketsID(bucket.id);
      }
    }
    bucket = await createTestBucket();

    // Create Authorization with permission to read/write created bucket
    var bucketResource = Resource(
        type: ResourceTypeEnum.buckets, id: bucket.id, orgID: organization.id);

    // Authorization configuration
    var auth = Authorization(
        description: 'Authorization to read/write bucket:${bucket.name}',
        orgID: organization.id,
        permissions: [
          Permission(
              action: PermissionActionEnum.read, resource: bucketResource),
          Permission(
              action: PermissionActionEnum.write, resource: bucketResource)
        ]);

    // Create Authorization
    var a = await client.getAuthorizationsApi().postAuthorizations(auth);
    var authToken = a.token;
    client.close();
    //new client for delete test
    client = InfluxDBClient(
        url: client.url,
        token: authToken,
        org: client.org,
        debugEnabled: client.debugEnabled);
  });

  tearDown(() {
    client.close();
  });

  Future<void> _write_data(InfluxDBClient client) async {
    var write_api = client.getWriteService();

    var p1 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 7.0)
        .time(1);

    await write_api.write(p1, bucket: bucket.name);

    var p2 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 8.0)
        .time(2);

    await write_api.write(p2, bucket: bucket.name);

    var p3 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 9.0)
        .time(3);
    var p4 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 10.0)
        .time(4);
    await write_api.write([p3, p4], bucket: bucket.name);

    var p5 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 11.0)
        .time(5);
    var p6 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 12.0)
        .time(6);
    await write_api.write([p5, p6], bucket: bucket.name);

    var p7 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 8.0)
        .time(7);
    await write_api.write(p7, bucket: bucket.name);

    var p8 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 9.0)
        .time(8);
    await write_api.write(p8, bucket: bucket.name);

    var p9 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 9.0)
        .time(9);
    var p10 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 11.0)
        .time(10);
    await write_api.write([p9, p10], bucket: bucket.name);

    var p11 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 11.0)
        .time(11);

    var p12 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 13.0)
        .time(12);

    await write_api.write([p11, p12], bucket: bucket.name);
    await write_api.flush();
  }

  group('delete', () {
    test('deleteBuckets', () async {
      await _write_data(client);

      var fluxQuery =
          'from(bucket:"${bucket.name}") |> range(start: 1970-01-01T00:00:00.000000001Z)';
      var records = await client.getQueryService().queryRecords(fluxQuery);
      List rec = await records.where((record) => record.tableIndex == 0).toList();
      expect(rec.length, 12);

      var start = '1970-01-01T00:00:00.000000001Z';
      var stop = '1970-01-01T00:00:00.000000012Z';

      await client
          .getDeleteService()
          .delete(start: start, stop: stop, bucketID: bucket.id, org: 'my-org');

      var resp = await client.getQueryService().queryRaw(fluxQuery);
      print(resp);
      records = await client.getQueryService().queryRecords(fluxQuery);
      rec = await records.toList();
      expect(rec.length, 0);
    });

    test('deleteBucketsByName', () async {
      await _write_data(client);

      var fluxQuery =
          'from(bucket:"${bucket.name}") |> range(start: 1970-01-01T00:00:00.000000001Z)';
      var records = await client.getQueryService().queryRecords(fluxQuery);
      List rec = await records.where((record) => record.tableIndex == 0).toList();
      expect(rec.length, 12);

      var start = '1970-01-01T00:00:00.000000001Z';
      var stop = '1970-01-01T00:00:00.000000012Z';

      await client
          .getDeleteService()
          .delete(start: start, stop: stop, bucket: bucket.name, org: 'my-org');

      var resp = await client.getQueryService().queryRaw(fluxQuery);
      print(resp);
      records = await client.getQueryService().queryRecords(fluxQuery);
      rec = await records.toList();
      expect(rec.length, 0);
    });
  });
}
