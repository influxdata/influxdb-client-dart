//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class RunLinks {
  /// Returns a new [RunLinks] instance.
  RunLinks({
    this.self,
    this.task,
    this.retry,
  });

  String? self;

  String? task;

  String? retry;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunLinks &&
     other.self == self &&
     other.task == task &&
     other.retry == retry;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (self == null ? 0 : self.hashCode) +
    (task == null ? 0 : task.hashCode) +
    (retry == null ? 0 : retry.hashCode);

  @override
  String toString() => 'RunLinks[self=$self, task=$task, retry=$retry]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (task != null) {
      json[r'task'] = task;
    }
    if (retry != null) {
      json[r'retry'] = retry;
    }
    return json;
  }

  /// Returns a new [RunLinks] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static RunLinks fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return RunLinks(
        self: mapValueOfType<String>(json, r'self'),
        task: mapValueOfType<String>(json, r'task'),
        retry: mapValueOfType<String>(json, r'retry'),
      );
  }

  static List<RunLinks>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RunLinks.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RunLinks>[];

  static Map<String, RunLinks?> mapFromJson(dynamic json) {
    final map = <String, RunLinks?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RunLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RunLinks-objects as value to a dart map
  static Map<String, List<RunLinks?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<RunLinks?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RunLinks.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

