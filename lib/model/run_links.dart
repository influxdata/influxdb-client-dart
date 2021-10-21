//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  /// Returns a new [RunLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RunLinks? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : RunLinks(
        self: json[r'self'],
        task: json[r'task'],
        retry: json[r'retry'],
    );

  static List<RunLinks?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <RunLinks>[]
      : json.map((dynamic value) => RunLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, RunLinks?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RunLinks?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = RunLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RunLinks-objects as value to a dart map
  static Map<String, List<RunLinks?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<RunLinks?>?> map = <String, List<RunLinks>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = RunLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

