//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ScriptInvocationParams {
  /// Returns a new [ScriptInvocationParams] instance.
  ScriptInvocationParams({
    this.params = const {},
  });

  Map<String, Object>? params;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScriptInvocationParams && other.params == params;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (params == null ? 0 : params.hashCode);

  @override
  String toString() => 'ScriptInvocationParams[params=$params]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (params != null) {
      json[r'params'] = params;
    }
    return json;
  }

  /// Returns a new [ScriptInvocationParams] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static ScriptInvocationParams fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return ScriptInvocationParams(
      params: mapValueOfType<Map<String, Object>>(json, r'params'),
    );
  }

  static List<ScriptInvocationParams>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ScriptInvocationParams.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ScriptInvocationParams>[];

  static Map<String, ScriptInvocationParams?> mapFromJson(dynamic json) {
    final map = <String, ScriptInvocationParams?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = ScriptInvocationParams.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ScriptInvocationParams-objects as value to a dart map
  static Map<String, List<ScriptInvocationParams?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<ScriptInvocationParams?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = ScriptInvocationParams.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
