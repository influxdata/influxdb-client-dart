//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class LogEvent {
  /// Returns a new [LogEvent] instance.
  LogEvent({
    this.time,
    this.message,
    this.runID,
  });

  /// Time event occurred, RFC3339Nano.
  DateTime? time;

  /// A description of the event that occurred.
  String? message;

  /// the ID of the task that logged
  String? runID;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogEvent &&
          other.time == time &&
          other.message == message &&
          other.runID == runID;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (time == null ? 0 : time.hashCode) +
      (message == null ? 0 : message.hashCode) +
      (runID == null ? 0 : runID.hashCode);

  @override
  String toString() => 'LogEvent[time=$time, message=$message, runID=$runID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (time != null) {
      json[r'time'] = time!.toUtc().toIso8601String();
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (runID != null) {
      json[r'runID'] = runID;
    }
    return json;
  }

  /// Returns a new [LogEvent] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static LogEvent fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return LogEvent(
      time: mapDateTime(json, r'time', ''),
      message: mapValueOfType<String>(json, r'message'),
      runID: mapValueOfType<String>(json, r'runID'),
    );
  }

  static List<LogEvent>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(LogEvent.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <LogEvent>[];

  static Map<String, LogEvent?> mapFromJson(dynamic json) {
    final map = <String, LogEvent?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = LogEvent.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LogEvent-objects as value to a dart map
  static Map<String, List<LogEvent?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<LogEvent?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = LogEvent.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
