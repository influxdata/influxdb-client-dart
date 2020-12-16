//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PasswordResetBody {
  /// Returns a new [PasswordResetBody] instance.
  PasswordResetBody({
    @required this.password,
  });

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasswordResetBody &&
     other.password == password;

  @override
  int get hashCode =>
    (password == null ? 0 : password.hashCode);

  @override
  String toString() => 'PasswordResetBody[password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (password != null) {
      json[r'password'] = password;
    }
    return json;
  }

  /// Returns a new [PasswordResetBody] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PasswordResetBody fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PasswordResetBody(
        password: json[r'password'],
    );

  static List<PasswordResetBody> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PasswordResetBody>[]
      : json.map((v) => PasswordResetBody.fromJson(v)).toList(growable: true == growable);

  static Map<String, PasswordResetBody> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PasswordResetBody>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PasswordResetBody.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PasswordResetBody-objects as value to a dart map
  static Map<String, List<PasswordResetBody>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PasswordResetBody>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PasswordResetBody.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

