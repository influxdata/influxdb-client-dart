//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Scripts {
  /// Returns a new [Scripts] instance.
  Scripts({
    this.scripts = const [],
  });

  List<Script>? scripts;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Scripts && other.scripts == scripts;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (scripts == null ? 0 : scripts.hashCode);

  @override
  String toString() => 'Scripts[scripts=$scripts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (scripts != null) {
      json[r'scripts'] = scripts;
    }
    return json;
  }

  /// Returns a new [Scripts] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Scripts fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Scripts(
      scripts: Script.listFromJson(json[r'scripts']),
    );
  }

  static List<Scripts>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Scripts.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Scripts>[];

  static Map<String, Scripts?> mapFromJson(dynamic json) {
    final map = <String, Scripts?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Scripts.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Scripts-objects as value to a dart map
  static Map<String, List<Scripts?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Scripts?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Scripts.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
