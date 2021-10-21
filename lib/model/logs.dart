//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Logs {
  /// Returns a new [Logs] instance.
  Logs({
    this.events = const [],
  });

  List<LogEvent?>? events;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Logs &&
     other.events == events;

  @override
  int get hashCode =>
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

  /// Returns a new [Logs] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Logs? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : Logs(
        events: LogEvent.listFromJson(json[r'events']),
    );

  static List<Logs?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <Logs>[]
      : json.map((dynamic value) => Logs.fromJson(value)).toList(growable: true == growable);

  static Map<String, Logs?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Logs?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Logs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Logs-objects as value to a dart map
  static Map<String, List<Logs?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<Logs?>?> map = <String, List<Logs>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Logs.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

