//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class AuthorizationAllOfLinks {
  /// Returns a new [AuthorizationAllOfLinks] instance.
  AuthorizationAllOfLinks({
    this.self,
    this.user,
  });

  /// URI of resource.
  String? self;

  /// URI of resource.
  String? user;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorizationAllOfLinks &&
          other.self == self &&
          other.user == user;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (self == null ? 0 : self.hashCode) + (user == null ? 0 : user.hashCode);

  @override
  String toString() => 'AuthorizationAllOfLinks[self=$self, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    return json;
  }

  /// Returns a new [AuthorizationAllOfLinks] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static AuthorizationAllOfLinks fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return AuthorizationAllOfLinks(
      self: mapValueOfType<String>(json, r'self'),
      user: mapValueOfType<String>(json, r'user'),
    );
  }

  static List<AuthorizationAllOfLinks>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(AuthorizationAllOfLinks.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <AuthorizationAllOfLinks>[];

  static Map<String, AuthorizationAllOfLinks?> mapFromJson(dynamic json) {
    final map = <String, AuthorizationAllOfLinks?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = AuthorizationAllOfLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthorizationAllOfLinks-objects as value to a dart map
  static Map<String, List<AuthorizationAllOfLinks?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<AuthorizationAllOfLinks?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = AuthorizationAllOfLinks.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
