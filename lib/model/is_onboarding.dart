//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class IsOnboarding {
  /// Returns a new [IsOnboarding] instance.
  IsOnboarding({
    this.allowed,
  });

  /// True means that the influxdb instance has NOT had initial setup; false means that the database has been setup.
  bool allowed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IsOnboarding &&
     other.allowed == allowed;

  @override
  int get hashCode =>
    (allowed == null ? 0 : allowed.hashCode);

  @override
  String toString() => 'IsOnboarding[allowed=$allowed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (allowed != null) {
      json[r'allowed'] = allowed;
    }
    return json;
  }

  /// Returns a new [IsOnboarding] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IsOnboarding fromJson(Map<String, dynamic> json) => json == null
    ? null
    : IsOnboarding(
        allowed: json[r'allowed'],
    );

  static List<IsOnboarding> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <IsOnboarding>[]
      : json.map((v) => IsOnboarding.fromJson(v)).toList(growable: true == growable);

  static Map<String, IsOnboarding> mapFromJson(Map<String, dynamic> json) {
    final map = <String, IsOnboarding>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = IsOnboarding.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of IsOnboarding-objects as value to a dart map
  static Map<String, List<IsOnboarding>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<IsOnboarding>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = IsOnboarding.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

