# influxdb-client-dart

[![CircleCI](https://circleci.com/gh/bonitoo-io/influxdb-client-dart.svg?style=svg)](https://circleci.com/gh/bonitoo-io/influxdb-client-dart)
[![codecov](https://codecov.io/gh/bonitoo-io/influxdb-client-dart/branch/master/graph/badge.svg)](https://codecov.io/gh/bonitoo-io/influxdb-client-dart)
[![Platforms](https://img.shields.io/badge/platform-dart|flutter-blue.svg)](https://github.com/bonitoo-io/influxdb-client-dart/)
[![Pub](https://img.shields.io/pub/v/github.svg)](https://pub.dartlang.org/packages/influxdb_client)
[![License](https://img.shields.io/github/license/bonitoo-io/influxdb-client-dart.svg)](https://github.com/bonitoo-io/influxdb-client-dart/blob/master/LICENSE)
[![Documentation](https://img.shields.io/badge/docs-latest-blue)](https://bonitoo-io.github.io/influxdb-dart-swift/)
[![GitHub issues](https://img.shields.io/github/issues-raw/bonitoo-io/influxdb-client-dart.svg)](https://github.com/bonitoo-io/influxdb-client-dart/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/bonitoo-io/influxdb-client-dart.svg)](https://github.com/bonitoo-io/influxdb-client-dart/pulls)
[![Slack Status](https://img.shields.io/badge/slack-join_chat-white.svg?logo=slack&style=social)](https://www.influxdata.com/slack)

#### !!! Disclaimer: This library is a work in progress and should not be considered production ready yet. !!!

This repository contains the reference Dart client for the InfluxDB 2.0.
It works on all platforms including web, server, and Flutter. 
Please submit issues and pull requests, help out, or just give encouragement.


- [Features](#features)
- [Supported Platforms](#supported-platforms)
- [Installation](#installation)
- [Usage](#usage)
    - [Creating a client](#creating-a-client)
    - [Writing data](#writes)
    - [Querying data](#queries)
    - [Delete data](#delete)  
    - [Management API](#management-api)
- [Advanced Usage](#advanced-usage)
    - [Default Tags](#default-tags)
- [Contributing](#contributing)
- [License](#license)

## Features

InfluxDB 2.0 client supports:

- Querying data using the Flux language
- Writing data
    - batched in chunks on background
    - automatic retries on write failures
- Management API 
    - provides all other InfluxDB 2.0 APIs for managing
        - health check
        - sources, buckets
        - tasks
        - authorizations
        - ...

## Supported Platforms

Library works in web, server, and Flutter.

## Installation

### Import

```dart
import 'package:influxdb_client/api.dart';
```

## Usage

> Important: You should call `close()` at the end of your application to release allocated resources.

### Creating a client
Specify **url** and **token** via parameters:

```dart
var client = InfluxDBClient(
    url: 'http://localhost:8086',
    token: 'my-token',
    org: 'my-org',
    bucket: 'my-bucket',
    debug: true);
```

#### Client Options

| Option | Description | Type | Default |
|---|---|---|---|
| url | InfluxDB url | String | none |
| bucket | Default destination bucket for writes | String | none |
| org | Default organization bucket for writes | String | none |
| precision | Default precision for the unix timestamps within the body line-protocol | WritePrecision | ns |
| debug | Enable verbose logging of underlying  http client | bool | false |

#### InfluxDB 1.8 API compatibility

```dart
  var client = InfluxDBClient(
    url: 'http://localhost:8086',
    username: '...',
    password: '...',
    org: 'my-org',
    bucket: 'my-bucket',
    debug: true);
```

### Writes

The WriteApi supports asynchronous writes into InfluxDB 2.0.

The data could be written as:

1. `String` that is formatted as a InfluxDB's Line Protocol
1. [Data Point](/lib/client/point.dart) structure
1. Array of above items

The following example demonstrates how to write data with different type of records. For further information see docs and [examples](examples).

```dart
import 'package:influxdb_client/api.dart';

main() async {
  var client = InfluxDBClient(
      url: 'http://localhost:8086',
      token: 'my-token',
      org: 'my-org',
      bucket: 'my-bucket',
      debugEnabled: true);

  var writeApi = WriteService(client);

  var point = Point('h2o')
      .addTag('location', 'Prague')
      .addField('level', 1.12345)
      .time(DateTime.now().toUtc());

  await writeApi.write(point).then((value) {
    print('Write completed 1');
  }).catchError((exception) {
    // error block
    print("Handle write error here!");
    print(exception);
  });

}

```
- sources - [write_example](examples/write_example.dart)

### Queries

The result retrieved by [QueryService](lib/client/query_service.dart) could be formatted as a:

#### Query to FluxRecord

```dart

import 'package:influxdb_client/api.dart';

void main() async {
  var client = InfluxDBClient(
    url: 'http://localhost:8086',
    token: 'my-token',
    org: 'my-org',
    bucket: 'my-bucket',
  );

  var queryService = client.getQueryService();

  var recordStream = await queryService.query('''
  from(bucket: "my-bucket")
  |> range(start: 0)
  |> filter(fn: (r) => r["_measurement"] == "cpu")
  |> filter(fn: (r) => r["cpu"] == "cpu-total")
  |> aggregateWindow(every: 1m, fn: mean, createEmpty: false)
  |> yield(name: "mean")
  ''');

  var count = 0;
  await recordStream.forEach((record) {
    print(
        'record: ${count++} ${record['_time']}: ${record['host']} ${record['cpu']} ${record['_value']}');
  });

  client.close();
}

```

#### Query to String

```dart

import 'package:influxdb_client/api.dart';

main() async {
  var client = InfluxDBClient(url: 'http://localhost:8086',
      token: 'my-token', org: 'my-org', bucket: 'my-bucket');

  var queryService = client.getQueryService(client);

  var rawCSV = await queryService.queryRaw('''
      from(bucket: "my-bucket")
        |> range(start: v.timeRangeStart, stop: v.timeRangeStop)
        |> filter(fn: (r) => r["_measurement"] == "h2o")
        |> aggregateWindow(every: v.windowPeriod, fn: mean, createEmpty: false)
        |> yield(name: "mean")''');

  print(rawCSV);
  
}


```
### Delete points

The [DeleteService](lib/client/delete_service.dart) supports deletes
[points](https://v2.docs.influxdata.com/v2.0/reference/glossary/#point) from an InfluxDB bucket.

InfluxDB uses an InfluxQL-like [predicate](https://docs.influxdata.com/influxdb/cloud/reference/syntax/delete-predicate/)
syntax to determine what data points to delete.

```dart
import 'package:influxdb_client/api.dart';

void main() async {
  var client = InfluxDBClient(
      url: 'http://localhost:8086',
      token: 'my-token',
      org: 'my-org',
      bucket: 'my-bucket',
      debugEnabled: true);

  await client
      .getDeleteService()
      .delete(
      predicate: '_measurement="temperature"',
      start: '1970-01-01T00:00:00.000000001Z',
      stop: DateTime.now().toUtc().toIso8601String(),
      bucket: 'my-bucket',
      org: 'my-org')
      .catchError((e) => print(e));

  var queryService = client.getQueryService();

  var fluxQuery = '''
  from(bucket: "my-bucket")
  |> range(start: -1d)
  |> filter(fn: (r) => r["_measurement"] == "temperature")
  ''';

  // should be empty
  var records = await queryService.query(fluxQuery);
  assert(await records.isEmpty);

  client.close();
}
```

### Management API

The client supports following management API:

|  | API docs |
| --- | --- |

The client supports following management API:

|  | API docs |
| --- | --- |
| [**AuthorizationsAPI**](lib/api/authorizations_api.dart) | https://docs.influxdata.com/influxdb/v2.0/api/#tag/Authorizations |
| [**BucketsAPI**](lib/api/buckets_api.dart) | https://docs.influxdata.com/influxdb/v2.0/api/#tag/Buckets |
| [**DBRPsAPI**](lib/api/DBRPs_api.dart) | https://docs.influxdata.com/influxdb/v2.0/api/#tag/DBRPs |
| [**HealthAPI**](lib/api/health_api.dart) | https://docs.influxdata.com/influxdb/v2.0/api/#tag/Health |
| [**LabelsAPI**](lib/api/labels_api.dart) | https://docs.influxdata.com/influxdb/v2.0/api/#tag/Labels |
| [**OrganizationsAPI**](lib/api/organizations_api.dart) | https://docs.influxdata.com/influxdb/v2.0/api/#tag/Organizations |
| [**ReadyAPI**](lib/api/ready_api.dart) | https://docs.influxdata.com/influxdb/v2.0/api/#tag/Ready |
| [**TasksAPI**](lib/api/tasks_api.dart) | https://docs.influxdata.com/influxdb/v2.0/api/#tag/Tasks |
| [**UsersAPI**](lib/api/users_api.dart) | https://docs.influxdata.com/influxdb/v2.0/api/#tag/Users |


The following example demonstrates how to use a InfluxDB 2.0 Management API to create new bucket. For further information see docs and [examples](examples/management_api_example.dart).

```dart
import 'package:influxdb_client/api.dart';

void main() async {
// Initialize Client and API
  var client = InfluxDBClient(
      url: 'http://localhost:8086', token: 'my-token', org: 'my-org');

  var healthCheck = await client.getHealthApi().getHealth();
  print('Health check: ${healthCheck.name}/${healthCheck.version} - ${healthCheck.message}');

  var ready = await client.getReadyApi().getReady();
  print('Ready check: ${ready.status}');

  var orgs = await OrganizationsApi(api).getOrgs();
  var myOrgId = orgs.orgs.first.id;

  var bucketsApi = BucketsApi(api);
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
  var auth = Authorization(
      description: 'Authorization to read/write bucket:${bucket.name}',
      orgID: myOrgId,
      permissions: [
        Permission(action: PermissionActionEnum.read, resource: bucketResource),
        Permission(action: PermissionActionEnum.write, resource: bucketResource)
      ]);

// Create Authorization
  var authorizationsApi = AuthorizationsApi(api);
  var authorization = await authorizationsApi.postAuthorizations(auth);

// Print token
  var token = authorization.token;
  print('The bucket: \'${bucket.name}\' is successfully created.');
  print('The following token can be used to read/write: ${token}');

  client.close();
}

```

## Contributing

If you would like to contribute code you can do through GitHub by forking the repository and sending a pull request into the `master` branch.

Build Requirements:

- dart 2.X

Build source and test targets:

```bash
./scripts/influxdb-restart.sh
dart test
```

Check code coverage:

```bash
./scripts/influxdb-restart.sh
dart test --enable-code-coverage
```

You could also use a `docker-cli` without installing the Swift SDK:

```bash
make docker-cli
swift build
```

## License

The client is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).