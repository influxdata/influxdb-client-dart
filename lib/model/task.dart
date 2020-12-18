//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Task {
  /// Returns a new [Task] instance.
  Task({
    @required this.id,
    this.type,
    @required this.orgID,
    this.org,
    @required this.name,
    this.description,
    this.status,
    this.labels = const [],
    this.authorizationID,
    @required this.flux,
    this.every,
    this.cron,
    this.offset,
    this.latestCompleted,
    this.lastRunStatus,
    this.lastRunError,
    this.createdAt,
    this.updatedAt,
    this.links,
  });

  String id;

  /// The type of task, this can be used for filtering tasks on list actions.
  String type;

  /// The ID of the organization that owns this Task.
  String orgID;

  /// The name of the organization that owns this Task.
  String org;

  /// The name of the task.
  String name;

  /// An optional description of the task.
  String description;

  TaskStatusType status;

  List<Label> labels;

  /// The ID of the authorization used when this task communicates with the query engine.
  String authorizationID;

  /// The Flux script to run for this task.
  String flux;

  /// A simple task repetition schedule; parsed from Flux.
  String every;

  /// A task repetition schedule in the form '* * * * * *'; parsed from Flux.
  String cron;

  /// Duration to delay after the schedule, before executing the task; parsed from flux, if set to zero it will remove this option and use 0 as the default.
  String offset;

  /// Timestamp of latest scheduled, completed run, RFC3339.
  DateTime latestCompleted;

  TaskLastRunStatusEnum lastRunStatus;

  String lastRunError;

  DateTime createdAt;

  DateTime updatedAt;

  TaskLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Task &&
     other.id == id &&
     other.type == type &&
     other.orgID == orgID &&
     other.org == org &&
     other.name == name &&
     other.description == description &&
     other.status == status &&
     other.labels == labels &&
     other.authorizationID == authorizationID &&
     other.flux == flux &&
     other.every == every &&
     other.cron == cron &&
     other.offset == offset &&
     other.latestCompleted == latestCompleted &&
     other.lastRunStatus == lastRunStatus &&
     other.lastRunError == lastRunError &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (orgID == null ? 0 : orgID.hashCode) +
    (org == null ? 0 : org.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (labels == null ? 0 : labels.hashCode) +
    (authorizationID == null ? 0 : authorizationID.hashCode) +
    (flux == null ? 0 : flux.hashCode) +
    (every == null ? 0 : every.hashCode) +
    (cron == null ? 0 : cron.hashCode) +
    (offset == null ? 0 : offset.hashCode) +
    (latestCompleted == null ? 0 : latestCompleted.hashCode) +
    (lastRunStatus == null ? 0 : lastRunStatus.hashCode) +
    (lastRunError == null ? 0 : lastRunError.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'Task[id=$id, type=$type, orgID=$orgID, org=$org, name=$name, description=$description, status=$status, labels=$labels, authorizationID=$authorizationID, flux=$flux, every=$every, cron=$cron, offset=$offset, latestCompleted=$latestCompleted, lastRunStatus=$lastRunStatus, lastRunError=$lastRunError, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (orgID != null) {
      json[r'orgID'] = orgID;
    }
    if (org != null) {
      json[r'org'] = org;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (labels != null) {
      json[r'labels'] = labels;
    }
    if (authorizationID != null) {
      json[r'authorizationID'] = authorizationID;
    }
    if (flux != null) {
      json[r'flux'] = flux;
    }
    if (every != null) {
      json[r'every'] = every;
    }
    if (cron != null) {
      json[r'cron'] = cron;
    }
    if (offset != null) {
      json[r'offset'] = offset;
    }
    if (latestCompleted != null) {
      json[r'latestCompleted'] = latestCompleted.toUtc().toIso8601String();
    }
    if (lastRunStatus != null) {
      json[r'lastRunStatus'] = lastRunStatus;
    }
    if (lastRunError != null) {
      json[r'lastRunError'] = lastRunError;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [Task] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Task fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Task(
        id: json[r'id'],
        type: json[r'type'],
        orgID: json[r'orgID'],
        org: json[r'org'],
        name: json[r'name'],
        description: json[r'description'],
        status: TaskStatusType.fromJson(json[r'status']),
        labels: Label.listFromJson(json[r'labels']),
        authorizationID: json[r'authorizationID'],
        flux: json[r'flux'],
        every: json[r'every'],
        cron: json[r'cron'],
        offset: json[r'offset'],
        latestCompleted: json[r'latestCompleted'] == null
          ? null
          : DateTime.parse(json[r'latestCompleted']),
        lastRunStatus: TaskLastRunStatusEnum.fromJson(json[r'lastRunStatus']),
        lastRunError: json[r'lastRunError'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        links: TaskLinks.fromJson(json[r'links']),
    );

  static List<Task> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Task>[]
      : json.map((v) => Task.fromJson(v)).toList(growable: true == growable);

  static Map<String, Task> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Task>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Task.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Task-objects as value to a dart map
  static Map<String, List<Task>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Task>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Task.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class TaskLastRunStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskLastRunStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TaskLastRunStatusEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const failed = TaskLastRunStatusEnum._(r'failed');
  static const success = TaskLastRunStatusEnum._(r'success');
  static const canceled = TaskLastRunStatusEnum._(r'canceled');

  /// List of all possible values in this [enum][TaskLastRunStatusEnum].
  static const values = <TaskLastRunStatusEnum>[
    failed,
    success,
    canceled,
  ];

  static TaskLastRunStatusEnum fromJson(dynamic value) =>
    TaskLastRunStatusEnumTypeTransformer().decode(value);

  static List<TaskLastRunStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TaskLastRunStatusEnum>[]
      : json
          .map((value) => TaskLastRunStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [TaskLastRunStatusEnum] to String,
/// and [decode] dynamic data back to [TaskLastRunStatusEnum].
class TaskLastRunStatusEnumTypeTransformer {
  const TaskLastRunStatusEnumTypeTransformer._();

  factory TaskLastRunStatusEnumTypeTransformer() => _instance ??= TaskLastRunStatusEnumTypeTransformer._();

  String encode(TaskLastRunStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskLastRunStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskLastRunStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'failed': return TaskLastRunStatusEnum.failed;
      case r'success': return TaskLastRunStatusEnum.success;
      case r'canceled': return TaskLastRunStatusEnum.canceled;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [TaskLastRunStatusEnumTypeTransformer] instance.
  static TaskLastRunStatusEnumTypeTransformer _instance;
}

