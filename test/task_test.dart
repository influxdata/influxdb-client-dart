import 'package:influxdb_client/api.dart';
import 'package:test/test.dart';

import 'commons_test.dart';

void main() async {
  late InfluxDBClient client;
  late TasksApi tasksApi;
  var flux = '''
// Task options
option task = {
    name: "cqinterval15m",
    every: 1h,
    offset: 0m,
    concurrency: 1,
}

// Data source
data = from(bucket: "example-bucket")
  |> range(start: -task.every)
  |> filter(fn: (r) =>
    r._measurement == "mem" and
    r.host == "myHost"
  )

// Data transformation
data
  |> aggregateWindow(
    every: 5m,
    fn: mean
  )
  // Data destination
  |> to(bucket: "example-downsampled")
      ''';

  setUpAll(() {
    client = createClient();
    tasksApi = client.getTasksApi();
  });

  tearDownAll(() {
    client.close();
  });

  group('tasks', () {
    test('listTasks', () async {
      var tasks = await tasksApi.getTasks();
      expect(tasks, isNotNull);
    });

    test('createTask', () async {
      TaskCreateRequest taskCreateRequest =
          TaskCreateRequest(flux: flux, org: client.org);
      var task = await tasksApi.postTasks(taskCreateRequest);

      expect(task, isNotNull);
      expect(task.id, isNotNull);
      expect(task.flux, flux);
      expect(task.every, '1h');
      expect(task.name, 'cqinterval15m');
    });

    test('deleteTask', () async {
      TaskCreateRequest taskCreateRequest =
          TaskCreateRequest(flux: flux, org: client.org);
      var task = await tasksApi.postTasks(taskCreateRequest);

      expect(task, isNotNull);
      expect(task.id, isNotNull);

      await tasksApi.deleteTasksID(task.id!);

      await expectLater(
          tasksApi.getTasksID(task.id!),
          throwsA((e) =>
              e is ApiException &&
              e.message == 'failed to find task: task not found' &&
              e.code == 404));
    });
  });
}
