//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class RunLog {
  /// Returns a new [RunLog] instance.
  RunLog({
    this.runID,
    this.time,
    this.message,
  });

  String runID;

  String time;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RunLog &&
     other.runID == runID &&
     other.time == time &&
     other.message == message;

  @override
  int get hashCode =>
    (runID == null ? 0 : runID.hashCode) +
    (time == null ? 0 : time.hashCode) +
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'RunLog[runID=$runID, time=$time, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (runID != null) {
      json[r'runID'] = runID;
    }
    if (time != null) {
      json[r'time'] = time;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  /// Returns a new [RunLog] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RunLog fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RunLog(
        runID: json[r'runID'],
        time: json[r'time'],
        message: json[r'message'],
    );

  static List<RunLog> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RunLog>[]
      : json.map((v) => RunLog.fromJson(v)).toList(growable: true == growable);

  static Map<String, RunLog> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RunLog>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RunLog.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RunLog-objects as value to a dart map
  static Map<String, List<RunLog>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RunLog>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RunLog.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

