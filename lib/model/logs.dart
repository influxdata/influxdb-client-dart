//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Logs {
  /// Returns a new [Logs] instance.
  Logs({
    this.events = const [],
  });

  List<LogEvent>? events;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Logs &&
     other.events == events;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (events == null ? 0 : events.hashCode);

  @override
  String toString() => 'Logs[events=$events]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (events != null) {
      json[r'events'] = events;
    }
    return json;
  }

  /// Returns a new [Logs] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Logs fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return Logs(
        events: LogEvent.listFromJson(json[r'events']),
      );
  }

  static List<Logs>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Logs.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Logs>[];

  static Map<String, Logs?> mapFromJson(dynamic json) {
    final map = <String, Logs?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Logs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Logs-objects as value to a dart map
  static Map<String, List<Logs?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<Logs?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Logs.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

