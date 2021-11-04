//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class TaskUpdateRequest {
  /// Returns a new [TaskUpdateRequest] instance.
  TaskUpdateRequest({
    this.status,
    this.flux,
    this.name,
    this.every,
    this.cron,
    this.offset,
    this.description,
  });

  TaskStatusType? status;

  /// The Flux script to run for this task.
  String? flux;

  /// Override the 'name' option in the flux script.
  String? name;

  /// Override the 'every' option in the flux script.
  String? every;

  /// Override the 'cron' option in the flux script.
  String? cron;

  /// Override the 'offset' option in the flux script.
  String? offset;

  /// An optional description of the task.
  String? description;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskUpdateRequest &&
          other.status == status &&
          other.flux == flux &&
          other.name == name &&
          other.every == every &&
          other.cron == cron &&
          other.offset == offset &&
          other.description == description;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status == null ? 0 : status.hashCode) +
      (flux == null ? 0 : flux.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (every == null ? 0 : every.hashCode) +
      (cron == null ? 0 : cron.hashCode) +
      (offset == null ? 0 : offset.hashCode) +
      (description == null ? 0 : description.hashCode);

  @override
  String toString() =>
      'TaskUpdateRequest[status=$status, flux=$flux, name=$name, every=$every, cron=$cron, offset=$offset, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (status != null) {
      json[r'status'] = status;
    }
    if (flux != null) {
      json[r'flux'] = flux;
    }
    if (name != null) {
      json[r'name'] = name;
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
    if (description != null) {
      json[r'description'] = description;
    }
    return json;
  }

  /// Returns a new [TaskUpdateRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static TaskUpdateRequest fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return TaskUpdateRequest(
      status: json[r'status'] == null
          ? null
          : TaskStatusType.fromJson(json[r'status']),
      flux: mapValueOfType<String>(json, r'flux'),
      name: mapValueOfType<String>(json, r'name'),
      every: mapValueOfType<String>(json, r'every'),
      cron: mapValueOfType<String>(json, r'cron'),
      offset: mapValueOfType<String>(json, r'offset'),
      description: mapValueOfType<String>(json, r'description'),
    );
  }

  static List<TaskUpdateRequest>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(TaskUpdateRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <TaskUpdateRequest>[];

  static Map<String, TaskUpdateRequest?> mapFromJson(dynamic json) {
    final map = <String, TaskUpdateRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = TaskUpdateRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskUpdateRequest-objects as value to a dart map
  static Map<String, List<TaskUpdateRequest?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<TaskUpdateRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = TaskUpdateRequest.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
