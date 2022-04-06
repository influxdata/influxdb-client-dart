# influxdb-client-dart

[![CircleCI](https://circleci.com/gh/influxdata/influxdb-client-dart.svg?style=svg)](https://circleci.com/gh/influxdata/influxdb-client-dart)
[![codecov](https://codecov.io/gh/influxdata/influxdb-client-dart/branch/master/graph/badge.svg)](https://codecov.io/gh/influxdata/influxdb-client-dart)
[![Platforms](https://img.shields.io/badge/platform-dart|flutter-blue.svg)](https://github.com/influxdata/influxdb-client-dart/)
![Pub Version](https://img.shields.io/pub/v/influxdb_client)
[![License](https://img.shields.io/github/license/influxdata/influxdb-client-dart.svg)](https://github.com/influxdata/influxdb-client-dart/blob/master/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues-raw/influxdata/influxdb-client-dart.svg)](https://github.com/influxdata/influxdb-client-dart/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/influxdata/influxdb-client-dart.svg)](https://github.com/influxdata/influxdb-client-dart/pulls)
[![Slack Status](https://img.shields.io/badge/slack-join_chat-white.svg?logo=slack&style=social)](https://www.influxdata.com/slack)

This repository contains the reference Dart client for the InfluxDB 2.x.
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

## Documentation

This section contains links to the client library documentation.

* [Product documentation](https://docs.influxdata.com/influxdb/latest/api-guide/client-libraries/), [Getting Started](#installation)
* [Examples](example)
* [API Reference](https://pub.dev/documentation/influxdb_client/latest/influxdb_client_api/InfluxDBClient-class.html)
* [Changelog](CHANGELOG.md)

## Features

InfluxDB 2.x client supports:

- Querying data using the Flux language
    - Streaming result to `Stream<FluxRecord>` 
- Writing data
    - batched in chunks on background
    - automatic retries on write failures
- Management API 
    - provides all other InfluxDB 2.x APIs for managing
        - health check
        - sources, buckets
        - tasks
        - authorizations
        - ...

## Supported Platforms

Library works in web, server, and Flutter.

## Installation

Dart developer can add it as a dependency in their pubspec.yaml:

```yaml
dependencies:
  influxdb_client: ^2.2.0
```


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

The WriteApi supports asynchronous writes into InfluxDB 2.x.

The data could be written as:

1. `String` that is formatted as a InfluxDB's Line Protocol
1. [Data Point](/lib/client/point.dart) structure
1. Array of above items

The following example demonstrates how to write data with different type of records. For further information see docs and [examples](example).

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

#### WriteOptions

Settings for `WriteService` like batching, default tags, retry strategy, precision, 
can customized in `WriteOptions'.

Example how to modify default `WriteOptions`:

```dart
  var client = InfluxDBClient(
      url: 'http://localhost:8086',
      token: 'my-token',
      org: 'my-org',
      bucket: 'my-bucket',
      debug: true);

  var writeApi = client.getWriteService(WriteOptions().merge(
      precision: WritePrecision.s,
      batchSize: 100,
      flushInterval: 5000,
      gzip: true));

```
- sources - [write_example](example/write_example.dart)

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

#### Parameterized queries
InfluxDB Cloud supports [Parameterized Queries](https://docs.influxdata.com/influxdb/cloud/query-data/parameterized-queries/)
that let you dynamically change values in a query using the InfluxDB API. Parameterized queries make Flux queries more
reusable and can also be used to help prevent injection attacks.

InfluxDB Cloud inserts the params object into the Flux query as a Flux record named `params`. Use dot or bracket
notation to access parameters in the `params` record in your Flux query. Parameterized Flux queries support only `int`
, `float`, and `string` data types. To convert the supported data types into
other [Flux basic data types, use Flux type conversion functions](https://docs.influxdata.com/influxdb/cloud/query-data/parameterized-queries/#supported-parameter-data-types).

Parameterized query example:
> :warning: Parameterized Queries are supported only in InfluxDB Cloud, currently there is no support in InfluxDB OSS.

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

  var queryService = client.getQueryService();
  var queryString = '''
       from(bucket: params.bucketParam)
            |> range(start: duration(v: params.startParam))
            |> filter(fn: (r) => r["_measurement"] == "weather" 
                             and r["location"] == "Prague")''';
  var queryParams = {'bucketParam':'my-bucket', 'startParam':'-10d'};
  var query = Query(query: queryString, params: queryParams);

  // Using string for query and Map for params
  var recordMap = await queryService.query(queryString, params: queryParams);

  // Using Query class
  var recordClass = await queryService.query(query);

  client.close();
}

```

### Delete points

The [DeleteService](lib/client/delete_service.dart) supports deletes
[points](https://docs.influxdata.com/influxdb/latest/reference/glossary/#point) from an InfluxDB bucket.

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

|  | API docs                                            |
| --- |-----------------------------------------------------|
| [**AuthorizationsAPI**](lib/api/authorizations_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Authorizations |
| [**BucketsAPI**](lib/api/buckets_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Buckets |
| [**DBRPsAPI**](lib/api/DBRPs_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/DBRPs |
| [**DeleteAPI**](lib/api/delete_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Delete |
| [**HealthAPI**](lib/api/health_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Health |
| [**LabelsAPI**](lib/api/labels_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Labels |
| [**OrganizationsAPI**](lib/api/organizations_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Organizations |
| [**PingAPI**](lib/api/ping_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Ping |
| [**ReadyAPI**](lib/api/ready_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Ready |
| [**SecretsAPI**](lib/api/secrets_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Secrets |
| [**SetupAPI**](lib/api/setup_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Setup |
| [**TasksAPI**](lib/api/tasks_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Tasks |
| [**UsersAPI**](lib/api/users_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Users |
| [**VariablesAPI**](lib/api/variables_api.dart) | https://docs.influxdata.com/influxdb/latest/api/#tag/Variables |


The following example demonstrates how to use a InfluxDB 2.x Management API to create new bucket. For further information see docs and [examples](example/management_api_example.dart).

```dart
import 'package:influxdb_client/api.dart';

void main() async {
// Initialize Client and API
  var client = InfluxDBClient(
      url: 'http://localhost:8086', token: 'my-token', org: 'my-org');

  //check server availability
  await client.getPingApi().getPing();

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


```
### Proxy configuration

By default the HttpClient uses the proxy configuration available from the environment, 
see [findProxyFromEnvironment](https://api.dart.dev/stable/dart-io/HttpClient/findProxyFromEnvironment.html).

```
export http_proxy="PROXY http://localhost:8080"
```

Initialize a proxy from code:

```dart
HttpClient httpClient = HttpClient();
httpClient.findProxy = (url) => "PROXY localhost:8080";
var client = IOClient(httpClient);

var influxdb = InfluxDBClient(
    url: 'http://localhost:8086',
    token: 'my-token',
    org: 'my-org',
    bucket: 'my-bucket',
    client: client,
    followRedirects: true,
    maxRedirects: 5,
    debug: true);
```

To turn off the use of proxies set the `findProxy` property to null.

Client [automatically follows](https://api.dart.dev/stable/dart-io/HttpClientRequest/followRedirects.html) HTTP redirects 
for all GET and HEAD requests with status codes 301, 302, 303, 307, 308. 
The default redirect policy is to follow up to 5 consecutive requests.

`write` and `query` APIs also support an automatic redirect of POST requests. You can disable `followRedirects`
and change default `maxRedirects` on `InfluxDBClient` instance.  

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

## License

The client is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
