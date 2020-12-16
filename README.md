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


var client = InfluxDBClient(url: 'http://localhost:8086', token: 'my-token', org: 'my-org', bucket: 'my-bucket');

client.close();
```

#### Client Options

| Option | Description | Type | Default |
|---|---|---|---|
| bucket | Default destination bucket for writes | String | none |
| org | Default organization bucket for writes | String | none |
| precision | Default precision for the unix timestamps within the body line-protocol | WritePrecision | ns |
| enableGzip | Enable Gzip compression for HTTP requests. | Bool | false |

#### InfluxDB 1.8 API compatibility

TODO 
```dart
client = InfluxDBClient(
        url: "http://localhost:8086", 
        username: "user", 
        password: "pass",
        database: "my-db", 
        retentionPolicy: "autogen")

...

client.close()
```

### Writes

The WriteApi supports asynchronous writes into InfluxDB 2.0.

The data could be written as:

1. `String` that is formatted as a InfluxDB's Line Protocol
1. [Data Point](/lib/client/point.dart) structure
1. TODO Tuple style mapping with keys: `measurement`, `tags`, `fields` and `time`
1. Array of above items

The following example demonstrates how to write data with different type of records. For further information see docs and [examples](/Examples).

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
- sources - [write_example](/example/write_example.dart)

### Queries

TODO
The result retrieved by [QueryService](/lib/src/client/QueryService.dart) could be formatted as a:

1. Lazy sequence of [FluxRecord](/Sources/InfluxDBSwift/QueryAPI.swift#L258)
1. Raw query response as a `String`.

#### Query to FluxRecord

```dart

```
- sources - [QueryCpu/main.swift](/Examples/QueryCpu/Sources/QueryCpu/main.swift)

#### Query to String

```dart

import 'package:influxdb_client/api.dart';

main() async {
  var client = InfluxDBClient(
      url: 'http://localhost:8086',
      token: 'my-token',
      org: 'my-org',
      bucket: 'my-bucket',
      debugEnabled: true);

  var queryService = QueryService(client);

  var rawCSV = await queryService.queryRaw('''
      from(bucket: "my-bucket")
        |> range(start: v.timeRangeStart, stop: v.timeRangeStop)
        |> filter(fn: (r) => r["_measurement"] == "h2o")
        |> aggregateWindow(every: v.windowPeriod, fn: mean, createEmpty: false)
        |> yield(name: "mean")''');

  print(rawCSV);
  
}


```

### Management API

The client supports following management API:

|  | API docs |
| --- | --- |

TODO


The following example demonstrates how to use a InfluxDB 2.0 Management API to create new bucket. For further information see docs and [examples](/Examples).

```dart

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
```

## Advanced Usage

### Default Tags

TODO

Sometimes is useful to store same information in every measurement e.g. `hostname`, `location`, `customer`.
The client is able to use static value or env variable as a tag value.

The expressions:
- `California Miner` - static value
- `${env.HOST_NAME}` - environment property

#### Example

```dart
TODO
```

##### Example Output

```bash
mining,customer=California\ Miner,sensor_id=123-456-789,sensor_state=normal depth=2i
mining,customer=California\ Miner,sensor_id=123-456-789,sensor_state=normal pressure=3i
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