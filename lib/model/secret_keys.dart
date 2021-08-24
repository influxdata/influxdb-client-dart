//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class SecretKeys {
  /// Returns a new [SecretKeys] instance.
  SecretKeys({
    this.secrets = const [],
  });

  List<String> secrets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecretKeys &&
     other.secrets == secrets;

  @override
  int get hashCode =>
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

  /// Returns a new [SecretKeys] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SecretKeys fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SecretKeys(
        secrets: json[r'secrets'] == null
          ? null
          : (json[r'secrets'] as List).cast<String>(),
    );

  static List<SecretKeys> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SecretKeys>[]
      : json.map((dynamic value) => SecretKeys.fromJson(value)).toList(growable: true == growable);

  static Map<String, SecretKeys> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SecretKeys>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = SecretKeys.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SecretKeys-objects as value to a dart map
  static Map<String, List<SecretKeys>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SecretKeys>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = SecretKeys.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

