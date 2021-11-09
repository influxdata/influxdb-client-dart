//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class TaskCreateRequest {
  /// Returns a new [TaskCreateRequest] instance.
  TaskCreateRequest({
    this.orgID,
    this.org,
    this.status,
    required this.flux,
    this.description,
  });

  /// The ID of the organization that owns this Task.
  String? orgID;

  /// The name of the organization that owns this Task.
  String? org;

  TaskStatusType? status;

  /// The Flux script to run for this task.
  String? flux;

  /// An optional description of the task.
  String? description;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskCreateRequest &&
          other.orgID == orgID &&
          other.org == org &&
          other.status == status &&
          other.flux == flux &&
          other.description == description;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (orgID == null ? 0 : orgID.hashCode) +
      (org == null ? 0 : org.hashCode) +
      (status == null ? 0 : status.hashCode) +
      (flux == null ? 0 : flux.hashCode) +
      (description == null ? 0 : description.hashCode);

  @override
  String toString() =>
      'TaskCreateRequest[orgID=$orgID, org=$org, status=$status, flux=$flux, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (orgID != null) {
      json[r'orgID'] = orgID;
    }
    if (org != null) {
      json[r'org'] = org;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    json[r'flux'] = flux;
    if (description != null) {
      json[r'description'] = description;
    }
    return json;
  }

  /// Returns a new [TaskCreateRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static TaskCreateRequest fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return TaskCreateRequest(
      orgID: mapValueOfType<String>(json, r'orgID'),
      org: mapValueOfType<String>(json, r'org'),
      status: json[r'status'] == null
          ? null
          : TaskStatusType.fromJson(json[r'status']),
      flux: mapValueOfType<String>(json, r'flux'),
      description: mapValueOfType<String>(json, r'description'),
    );
  }

  static List<TaskCreateRequest>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(TaskCreateRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <TaskCreateRequest>[];

  static Map<String, TaskCreateRequest?> mapFromJson(dynamic json) {
    final map = <String, TaskCreateRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = TaskCreateRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskCreateRequest-objects as value to a dart map
  static Map<String, List<TaskCreateRequest?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<TaskCreateRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = TaskCreateRequest.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
