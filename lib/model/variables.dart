//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Variables {
  /// Returns a new [Variables] instance.
  Variables({
    this.variables = const [],
  });

  List<Variable>? variables;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Variables && other.variables == variables;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (variables == null ? 0 : variables.hashCode);

  @override
  String toString() => 'Variables[variables=$variables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (variables != null) {
      json[r'variables'] = variables;
    }
    return json;
  }

  /// Returns a new [Variables] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Variables fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Variables(
      variables: Variable.listFromJson(json[r'variables']),
    );
  }

  static List<Variables>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Variables.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Variables>[];

  static Map<String, Variables?> mapFromJson(dynamic json) {
    final map = <String, Variables?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = Variables.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Variables-objects as value to a dart map
  static Map<String, List<Variables?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Variables?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Variables.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
