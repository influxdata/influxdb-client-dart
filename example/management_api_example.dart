import 'package:influxdb_client/api.dart';

void main() async {
  var client = InfluxDBClient(
      url: 'http://localhost:8086', token: 'my-token', org: 'my-org');

  var orgApi = client.getOrganizationsApi();

  // list organizations
  await orgApi.getOrgs().then((organizations) {
    organizations.orgs.forEach((org) => print('Org: ${org.name} ${org.id}'));
  });

  // create new organization
  var newOrg = PostOrganizationRequest(name: 'new org3' + DateTime.now().toString());
  var createdOrg = await orgApi.postOrgs(newOrg);
  print('Created org ${createdOrg.name} ${createdOrg.id}');

  // delete organization
  print('Delete organization');
  await orgApi.deleteOrgsID(createdOrg.id);

  var usersApi = client.getUsersApi();
  await usersApi.getUsers().then((value) => value.users.forEach((user) {
        print('user: ${user.name} / ${user.id}');
      }));

  client.close();
}
