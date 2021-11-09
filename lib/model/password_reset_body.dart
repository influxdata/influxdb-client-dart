//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PasswordResetBody {
  /// Returns a new [PasswordResetBody] instance.
  PasswordResetBody({
    required this.password,
  });

  String? password;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordResetBody && other.password == password;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (password == null ? 0 : password.hashCode);

  @override
  String toString() => 'PasswordResetBody[password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'password'] = password;
    return json;
  }

  /// Returns a new [PasswordResetBody] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static PasswordResetBody fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return PasswordResetBody(
      password: mapValueOfType<String>(json, r'password'),
    );
  }

  static List<PasswordResetBody>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(PasswordResetBody.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <PasswordResetBody>[];

  static Map<String, PasswordResetBody?> mapFromJson(dynamic json) {
    final map = <String, PasswordResetBody?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = PasswordResetBody.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PasswordResetBody-objects as value to a dart map
  static Map<String, List<PasswordResetBody?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<PasswordResetBody?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = PasswordResetBody.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
