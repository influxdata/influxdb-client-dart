//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Tasks {
  /// Returns a new [Tasks] instance.
  Tasks({
    this.links,
    this.tasks = const [],
  });

  Links? links;

  List<Task>? tasks;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tasks && other.links == links && other.tasks == tasks;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (links == null ? 0 : links.hashCode) +
      (tasks == null ? 0 : tasks.hashCode);

  @override
  String toString() => 'Tasks[links=$links, tasks=$tasks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'links'] = links;
    }
    if (tasks != null) {
      json[r'tasks'] = tasks;
    }
    return json;
  }

  /// Returns a new [Tasks] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Tasks fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Tasks(
      links: json[r'links'] == null ? null : Links.fromJson(json[r'links']),
      tasks: Task.listFromJson(json[r'tasks']),
    );
  }

  static List<Tasks>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Tasks.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Tasks>[];

  static Map<String, Tasks?> mapFromJson(dynamic json) {
    final map = <String, Tasks?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Tasks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Tasks-objects as value to a dart map
  static Map<String, List<Tasks?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Tasks?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Tasks.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
