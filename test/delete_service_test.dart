import 'package:influxdb_client/api.dart';
import 'package:test/test.dart';
import 'commons_test.dart';

void main() {
  Bucket bucket;

  setUp(() async {
    setupClient();
    organization = await findMyOrg();
    bucket = await createTestBucket();
    print('Created bucket id:${bucket.id} name: ${bucket.name}');
    // Create Authorization with permission to read/write created bucket
    var bucketResource = Resource(
        type: ResourceTypeEnum.buckets, id: bucket.id, orgID: organization.id);

    // Authorization configuration
    var auth = AuthorizationPostRequest(
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
        debug: client.debug);
  });

  tearDown(() async {
    if (bucket != null) {
      print('Delete bucket id: ${bucket.id}');
      await client.getBucketsApi().deleteBucketsID(bucket.id);
    }
    client.close();
  });

  Future<void> _write_data(InfluxDBClient client) async {
    var write_api = client.getWriteService();

    var p1 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 7.0)
        .time(1);

    await write_api.write(p1, bucket: bucket.name, precision: WritePrecision.s);

    var p2 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 8.0)
        .time(2);

    await write_api.write(p2, bucket: bucket.name, precision: WritePrecision.s);

    var p3 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 9.0)
        .time(3);
    var p4 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 10.0)
        .time(4);
    await write_api.write([p3, p4], bucket: bucket.name, precision: WritePrecision.s);

    var p5 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 11.0)
        .time(5);
    var p6 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 12.0)
        .time(6);
    await write_api.write([p5, p6], bucket: bucket.name, precision: WritePrecision.s);

    var p7 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 8.0)
        .time(7);
    await write_api.write(p7, bucket: bucket.name, precision: WritePrecision.s);

    var p8 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 9.0)
        .time(8);
    await write_api.write(p8, bucket: bucket.name, precision: WritePrecision.s);

    var p9 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 9.0)
        .time(9);
    var p10 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 11.0)
        .time(10);

    await write_api.write([p9, p10], bucket: bucket.name, precision: WritePrecision.s);

    var p11 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 11.0)
        .time(11);

    var p12 = Point('h2o')
        .addTag('location', 'coyote_creek')
        .addField('watter_level', 13.0)
        .time(12);

    await write_api.write([p11, p12], bucket: bucket.name,precision: WritePrecision.s);
    await write_api.flush();
  }

  group('delete', () {
    test('deleteBuckets', () async {
      await _write_data(client);

      var fluxQuery =
          'from(bucket:"${bucket.name}") |> range(start: 1970-01-01T00:00:00.000000001Z)';
      var records = await client.getQueryService().query(fluxQuery);
      List rec =
          await records.where((record) => record.tableIndex == 0).toList();
      expect(rec.length, 12);

      var start = '1970-01-01T00:00:01Z';
      var stop = '1970-01-01T00:00:12Z';

      await client
          .getDeleteService()
          .delete(start: DateTime.parse(start), stop: DateTime.parse(stop), bucketID: bucket.id, orgID: organization.id);

      var resp = await client.getQueryService().queryRaw(fluxQuery);
      print(resp);
      records = await client.getQueryService().query(fluxQuery);
      rec = await records.toList();
      expect(rec.length, 0);
    });

    test('deleteBucketsByName', () async {
      await _write_data(client);

      var fluxQuery =
          'from(bucket:"${bucket.name}") |> range(start: 1970-01-01T00:00:00.000000001Z)';
      var records = await client.getQueryService().query(fluxQuery);
      List rec =
          await records.where((record) => record.tableIndex == 0).toList();
      expect(rec.length, 12);

      var start = '1970-01-01T00:00:01Z';
      var stop = '1970-01-01T00:00:12Z';

      await client
          .getDeleteService()
          .delete(start: DateTime.parse(start), stop: DateTime.parse(stop), bucket: bucket.name, orgID: organization.id);

      var resp = await client.getQueryService().queryRaw(fluxQuery);
      print(resp);
      records = await client.getQueryService().query(fluxQuery);
      rec = await records.toList();
      expect(rec.length, 0);
    });
  });
}
