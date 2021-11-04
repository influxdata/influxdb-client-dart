//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class RunManually {
  /// Returns a new [RunManually] instance.
  RunManually({
    this.scheduledFor,
  });

  /// Time used for run's \"now\" option, RFC3339.  Default is the server's now time.
  DateTime? scheduledFor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RunManually && other.scheduledFor == scheduledFor;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (scheduledFor == null ? 0 : scheduledFor.hashCode);

  @override
  String toString() => 'RunManually[scheduledFor=$scheduledFor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (scheduledFor != null) {
      json[r'scheduledFor'] = scheduledFor!.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [RunManually] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static RunManually fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return RunManually(
      scheduledFor: mapDateTime(json, r'scheduledFor', ''),
    );
  }

  static List<RunManually>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(RunManually.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <RunManually>[];

  static Map<String, RunManually?> mapFromJson(dynamic json) {
    final map = <String, RunManually?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = RunManually.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RunManually-objects as value to a dart map
  static Map<String, List<RunManually?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<RunManually?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = RunManually.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
