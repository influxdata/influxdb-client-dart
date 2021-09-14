//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  String self;

  /// URI of resource.
  String owners;

  /// URI of resource.
  String members;

  /// URI of resource.
  String runs;

  /// URI of resource.
  String logs;

  /// URI of resource.
  String labels;

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

  /// Returns a new [TaskLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TaskLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TaskLinks(
        self: json[r'self'],
        owners: json[r'owners'],
        members: json[r'members'],
        runs: json[r'runs'],
        logs: json[r'logs'],
        labels: json[r'labels'],
    );

  static List<TaskLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TaskLinks>[]
      : json.map((dynamic value) => TaskLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, TaskLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TaskLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = TaskLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskLinks-objects as value to a dart map
  static Map<String, List<TaskLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TaskLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = TaskLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

