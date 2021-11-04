//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class UserResponseLinks {
  /// Returns a new [UserResponseLinks] instance.
  UserResponseLinks({
    this.self,
  });

  String? self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserResponseLinks &&
     other.self == self;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (self == null ? 0 : self.hashCode);

  @override
  String toString() => 'UserResponseLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  /// Returns a new [UserResponseLinks] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static UserResponseLinks fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return UserResponseLinks(
        self: mapValueOfType<String>(json, r'self'),
      );
  }

  static List<UserResponseLinks>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UserResponseLinks.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UserResponseLinks>[];

  static Map<String, UserResponseLinks?> mapFromJson(dynamic json) {
    final map = <String, UserResponseLinks?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UserResponseLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserResponseLinks-objects as value to a dart map
  static Map<String, List<UserResponseLinks?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<UserResponseLinks?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UserResponseLinks.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

