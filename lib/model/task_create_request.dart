//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  bool operator ==(Object other) => identical(this, other) || other is TaskCreateRequest &&
     other.orgID == orgID &&
     other.org == org &&
     other.status == status &&
     other.flux == flux &&
     other.description == description;

  @override
  int get hashCode =>
    (orgID == null ? 0 : orgID.hashCode) +
    (org == null ? 0 : org.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (flux == null ? 0 : flux.hashCode) +
    (description == null ? 0 : description.hashCode);

  @override
  String toString() => 'TaskCreateRequest[orgID=$orgID, org=$org, status=$status, flux=$flux, description=$description]';

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

  /// Returns a new [TaskCreateRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TaskCreateRequest? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : TaskCreateRequest(
        orgID: json[r'orgID'],
        org: json[r'org'],
        status: TaskStatusType.fromJson(json[r'status']),
        flux: json[r'flux'],
        description: json[r'description'],
    );

  static List<TaskCreateRequest?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <TaskCreateRequest>[]
      : json.map((dynamic value) => TaskCreateRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, TaskCreateRequest?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TaskCreateRequest?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = TaskCreateRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskCreateRequest-objects as value to a dart map
  static Map<String, List<TaskCreateRequest?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<TaskCreateRequest?>?> map = <String, List<TaskCreateRequest>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = TaskCreateRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

