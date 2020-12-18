//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class AuthorizationAllOfLinks {
  /// Returns a new [AuthorizationAllOfLinks] instance.
  AuthorizationAllOfLinks({
    this.self,
    this.user,
  });

  /// URI of resource.
  String self;

  /// URI of resource.
  String user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorizationAllOfLinks &&
     other.self == self &&
     other.user == user;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (user == null ? 0 : user.hashCode);

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

  /// Returns a new [AuthorizationAllOfLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuthorizationAllOfLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AuthorizationAllOfLinks(
        self: json[r'self'],
        user: json[r'user'],
    );

  static List<AuthorizationAllOfLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuthorizationAllOfLinks>[]
      : json.map((v) => AuthorizationAllOfLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, AuthorizationAllOfLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuthorizationAllOfLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AuthorizationAllOfLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AuthorizationAllOfLinks-objects as value to a dart map
  static Map<String, List<AuthorizationAllOfLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuthorizationAllOfLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AuthorizationAllOfLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

