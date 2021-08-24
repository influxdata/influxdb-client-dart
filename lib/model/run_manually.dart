//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class RunManually {
  /// Returns a new [RunManually] instance.
  RunManually({
    this.scheduledFor,
  });

  /// Time used for run's \"now\" option, RFC3339.  Default is the server's now time.
  DateTime scheduledFor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunManually &&
     other.scheduledFor == scheduledFor;

  @override
  int get hashCode =>
    (scheduledFor == null ? 0 : scheduledFor.hashCode);

  @override
  String toString() => 'RunManually[scheduledFor=$scheduledFor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (scheduledFor != null) {
      json[r'scheduledFor'] = scheduledFor.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [RunManually] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RunManually fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RunManually(
        scheduledFor: json[r'scheduledFor'] == null
          ? null
          : DateTime.parse(json[r'scheduledFor']),
    );

  static List<RunManually> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RunManually>[]
      : json.map((dynamic value) => RunManually.fromJson(value)).toList(growable: true == growable);

  static Map<String, RunManually> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RunManually>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = RunManually.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RunManually-objects as value to a dart map
  static Map<String, List<RunManually>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RunManually>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = RunManually.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

