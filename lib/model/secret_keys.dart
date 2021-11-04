//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class SecretKeys {
  /// Returns a new [SecretKeys] instance.
  SecretKeys({
    this.secrets = const [],
  });

  List<String>? secrets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecretKeys &&
     other.secrets == secrets;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (secrets == null ? 0 : secrets.hashCode);

  @override
  String toString() => 'SecretKeys[secrets=$secrets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (secrets != null) {
      json[r'secrets'] = secrets;
    }
    return json;
  }

  /// Returns a new [SecretKeys] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static SecretKeys fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return SecretKeys(
        secrets: json[r'secrets'] is List
          ? (json[r'secrets'] as List).cast<String>()
          : null,
      );
  }

  static List<SecretKeys>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SecretKeys.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SecretKeys>[];

  static Map<String, SecretKeys?> mapFromJson(dynamic json) {
    final map = <String, SecretKeys?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SecretKeys.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SecretKeys-objects as value to a dart map
  static Map<String, List<SecretKeys?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<SecretKeys?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SecretKeys.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

