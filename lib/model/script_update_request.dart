//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ScriptUpdateRequest {
  /// Returns a new [ScriptUpdateRequest] instance.
  ScriptUpdateRequest({
    this.name,
    this.description,
    this.script,
  });

  String? name;

  String? description;

  /// script is script to be executed
  String? script;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScriptUpdateRequest &&
          other.name == name &&
          other.description == description &&
          other.script == script;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (script == null ? 0 : script.hashCode);

  @override
  String toString() =>
      'ScriptUpdateRequest[name=$name, description=$description, script=$script]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (script != null) {
      json[r'script'] = script;
    }
    return json;
  }

  /// Returns a new [ScriptUpdateRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static ScriptUpdateRequest fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return ScriptUpdateRequest(
      name: mapValueOfType<String>(json, r'name'),
      description: mapValueOfType<String>(json, r'description'),
      script: mapValueOfType<String>(json, r'script'),
    );
  }

  static List<ScriptUpdateRequest>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ScriptUpdateRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ScriptUpdateRequest>[];

  static Map<String, ScriptUpdateRequest?> mapFromJson(dynamic json) {
    final map = <String, ScriptUpdateRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = ScriptUpdateRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ScriptUpdateRequest-objects as value to a dart map
  static Map<String, List<ScriptUpdateRequest?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<ScriptUpdateRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = ScriptUpdateRequest.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
