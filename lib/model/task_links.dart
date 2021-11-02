//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class TaskLinks {
  /// Returns a new [TaskLinks] instance.
  TaskLinks({
    this.self,
    this.owners,
    this.members,
    this.runs,
    this.logs,
    this.labels,
  });

  /// URI of resource.
  String? self;

  /// URI of resource.
  String? owners;

  /// URI of resource.
  String? members;

  /// URI of resource.
  String? runs;

  /// URI of resource.
  String? logs;

  /// URI of resource.
  String? labels;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskLinks &&
     other.self == self &&
     other.owners == owners &&
     other.members == members &&
     other.runs == runs &&
     other.logs == logs &&
     other.labels == labels;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (self == null ? 0 : self.hashCode) +
    (owners == null ? 0 : owners.hashCode) +
    (members == null ? 0 : members.hashCode) +
    (runs == null ? 0 : runs.hashCode) +
    (logs == null ? 0 : logs.hashCode) +
    (labels == null ? 0 : labels.hashCode);

  @override
  String toString() => 'TaskLinks[self=$self, owners=$owners, members=$members, runs=$runs, logs=$logs, labels=$labels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (owners != null) {
      json[r'owners'] = owners;
    }
    if (members != null) {
      json[r'members'] = members;
    }
    if (runs != null) {
      json[r'runs'] = runs;
    }
    if (logs != null) {
      json[r'logs'] = logs;
    }
    if (labels != null) {
      json[r'labels'] = labels;
    }
    return json;
  }

  /// Returns a new [TaskLinks] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static TaskLinks fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return TaskLinks(
        self: mapValueOfType<String>(json, r'self'),
        owners: mapValueOfType<String>(json, r'owners'),
        members: mapValueOfType<String>(json, r'members'),
        runs: mapValueOfType<String>(json, r'runs'),
        logs: mapValueOfType<String>(json, r'logs'),
        labels: mapValueOfType<String>(json, r'labels'),
      );
  }

  static List<TaskLinks>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TaskLinks.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TaskLinks>[];

  static Map<String, TaskLinks?> mapFromJson(dynamic json) {
    final map = <String, TaskLinks?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TaskLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskLinks-objects as value to a dart map
  static Map<String, List<TaskLinks?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<TaskLinks?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TaskLinks.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

