//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class IsOnboarding {
  /// Returns a new [IsOnboarding] instance.
  IsOnboarding({
    this.allowed,
  });

  /// True means that the influxdb instance has NOT had initial setup; false means that the database has been setup.
  bool? allowed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IsOnboarding &&
     other.allowed == allowed;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
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

  /// Returns a new [IsOnboarding] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static IsOnboarding fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return IsOnboarding(
        allowed: mapValueOfType<bool>(json, r'allowed'),
      );
  }

  static List<IsOnboarding>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(IsOnboarding.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <IsOnboarding>[];

  static Map<String, IsOnboarding?> mapFromJson(dynamic json) {
    final map = <String, IsOnboarding?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = IsOnboarding.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IsOnboarding-objects as value to a dart map
  static Map<String, List<IsOnboarding?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<IsOnboarding?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = IsOnboarding.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

