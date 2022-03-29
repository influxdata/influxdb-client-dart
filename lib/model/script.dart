//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Script {
  /// Returns a new [Script] instance.
  Script({
    this.id,
    required this.name,
    this.description,
    required this.orgID,
    required this.script,
    this.language,
    this.url,
    this.createdAt,
    this.updatedAt,
  });

  String? id;

  String? name;

  String? description;

  String? orgID;

  /// script to be executed
  String? script;

  ScriptLanguage? language;

  /// invocation endpoint address
  String? url;

  DateTime? createdAt;

  DateTime? updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Script &&
          other.id == id &&
          other.name == name &&
          other.description == description &&
          other.orgID == orgID &&
          other.script == script &&
          other.language == language &&
          other.url == url &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (orgID == null ? 0 : orgID.hashCode) +
      (script == null ? 0 : script.hashCode) +
      (language == null ? 0 : language.hashCode) +
      (url == null ? 0 : url.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() =>
      'Script[id=$id, name=$name, description=$description, orgID=$orgID, script=$script, language=$language, url=$url, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'name'] = name;
    if (description != null) {
      json[r'description'] = description;
    }
    json[r'orgID'] = orgID;
    json[r'script'] = script;
    if (language != null) {
      json[r'language'] = language;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt!.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt!.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [Script] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Script fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Script(
      id: mapValueOfType<String>(json, r'id'),
      name: mapValueOfType<String>(json, r'name'),
      description: mapValueOfType<String>(json, r'description'),
      orgID: mapValueOfType<String>(json, r'orgID'),
      script: mapValueOfType<String>(json, r'script'),
      language: json[r'language'] == null
          ? null
          : ScriptLanguage.fromJson(json[r'language']),
      url: mapValueOfType<String>(json, r'url'),
      createdAt: mapDateTime(json, r'createdAt', ''),
      updatedAt: mapDateTime(json, r'updatedAt', ''),
    );
  }

  static List<Script>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Script.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Script>[];

  static Map<String, Script?> mapFromJson(dynamic json) {
    final map = <String, Script?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Script.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Script-objects as value to a dart map
  static Map<String, List<Script?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Script?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Script.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
