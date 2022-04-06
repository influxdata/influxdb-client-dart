//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ScriptCreateRequest {
  /// Returns a new [ScriptCreateRequest] instance.
  ScriptCreateRequest({
    required this.name,
    required this.description,
    required this.script,
    required this.language,
  });

  /// The name of the script. The name must be unique within the organization.
  String? name;

  String? description;

  /// The script to execute.
  String? script;

  ScriptLanguage? language;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScriptCreateRequest &&
          other.name == name &&
          other.description == description &&
          other.script == script &&
          other.language == language;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (script == null ? 0 : script.hashCode) +
      (language == null ? 0 : language.hashCode);

  @override
  String toString() =>
      'ScriptCreateRequest[name=$name, description=$description, script=$script, language=$language]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'name'] = name;
    json[r'description'] = description;
    json[r'script'] = script;
    json[r'language'] = language;
    return json;
  }

  /// Returns a new [ScriptCreateRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static ScriptCreateRequest fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return ScriptCreateRequest(
      name: mapValueOfType<String>(json, r'name'),
      description: mapValueOfType<String>(json, r'description'),
      script: mapValueOfType<String>(json, r'script'),
      language: json[r'language'] == null
          ? null
          : ScriptLanguage.fromJson(json[r'language']),
    );
  }

  static List<ScriptCreateRequest>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ScriptCreateRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ScriptCreateRequest>[];

  static Map<String, ScriptCreateRequest?> mapFromJson(dynamic json) {
    final map = <String, ScriptCreateRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = ScriptCreateRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ScriptCreateRequest-objects as value to a dart map
  static Map<String, List<ScriptCreateRequest?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<ScriptCreateRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = ScriptCreateRequest.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
