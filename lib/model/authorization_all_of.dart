//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class AuthorizationAllOf {
  /// Returns a new [AuthorizationAllOf] instance.
  AuthorizationAllOf({
    this.createdAt,
    this.updatedAt,
    this.orgID,
    this.permissions = const [],
    this.id,
    this.token,
    this.userID,
    this.user,
    this.org,
    this.links,
  });

  DateTime createdAt;

  DateTime updatedAt;

  /// ID of org that authorization is scoped to.
  String orgID;

  /// List of permissions for an auth.  An auth must have at least one Permission.
  List<Permission> permissions;

  String id;

  /// Passed via the Authorization Header and Token Authentication type.
  String token;

  /// ID of user that created and owns the token.
  String userID;

  /// Name of user that created and owns the token.
  String user;

  /// Name of the org token is scoped to.
  String org;

  AuthorizationAllOfLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorizationAllOf &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.orgID == orgID &&
     other.permissions == permissions &&
     other.id == id &&
     other.token == token &&
     other.userID == userID &&
     other.user == user &&
     other.org == org &&
     other.links == links;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (orgID == null ? 0 : orgID.hashCode) +
    (permissions == null ? 0 : permissions.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (token == null ? 0 : token.hashCode) +
    (userID == null ? 0 : userID.hashCode) +
    (user == null ? 0 : user.hashCode) +
    (org == null ? 0 : org.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'AuthorizationAllOf[createdAt=$createdAt, updatedAt=$updatedAt, orgID=$orgID, permissions=$permissions, id=$id, token=$token, userID=$userID, user=$user, org=$org, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (orgID != null) {
      json[r'orgID'] = orgID;
    }
    if (permissions != null) {
      json[r'permissions'] = permissions;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (token != null) {
      json[r'token'] = token;
    }
    if (userID != null) {
      json[r'userID'] = userID;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    if (org != null) {
      json[r'org'] = org;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [AuthorizationAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuthorizationAllOf fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AuthorizationAllOf(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        orgID: json[r'orgID'],
        permissions: Permission.listFromJson(json[r'permissions']),
        id: json[r'id'],
        token: json[r'token'],
        userID: json[r'userID'],
        user: json[r'user'],
        org: json[r'org'],
        links: AuthorizationAllOfLinks.fromJson(json[r'links']),
    );

  static List<AuthorizationAllOf> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuthorizationAllOf>[]
      : json.map((dynamic value) => AuthorizationAllOf.fromJson(value)).toList(growable: true == growable);

  static Map<String, AuthorizationAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuthorizationAllOf>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = AuthorizationAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthorizationAllOf-objects as value to a dart map
  static Map<String, List<AuthorizationAllOf>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuthorizationAllOf>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = AuthorizationAllOf.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

