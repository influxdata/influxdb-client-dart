import 'package:influxdb_client/api.dart';

main() async {
  var client = InfluxDBClient(
      url: 'http://localhost:8086',
      token: 'my-token',
      org: 'my-org',
      bucket: 'my-bucket',
      debugEnabled: true);

  var orgApi = OrganizationsApi(client.getApiClient());

  // list organizations
  await orgApi.getOrgs().then((organizations) {
    organizations.orgs.forEach((org) => print('Org: ${org.name} ${org.id}'));
  });

  // create new organization
  var newOrg = Organization(name: 'new org3'+DateTime.now().toString());
  var createdOrg = await orgApi.postOrgs(newOrg);
  print('Created org ${createdOrg.name} ${createdOrg.id}');

  // delete organization
  print('Delete organization');
  await orgApi.deleteOrgsID(createdOrg.id);
  // await orgApi.deleteOrgsID("e8c1beb5b57da8d3");

  var usersApi = UsersApi(client.getApiClient());
  await usersApi.getUsers().then((value) => value.users.forEach((user) {
        print('user: ${user.name} / ${user.id}');
      }));
}
