//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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

  DateTime? createdAt;

  DateTime? updatedAt;

  /// ID of org that authorization is scoped to.
  String? orgID;

  /// List of permissions for an auth.  An auth must have at least one Permission.
  List<Permission>? permissions;

  String? id;

  /// Passed via the Authorization Header and Token Authentication type.
  String? token;

  /// ID of user that created and owns the token.
  String? userID;

  /// Name of user that created and owns the token.
  String? user;

  /// Name of the org token is scoped to.
  String? org;

  AuthorizationAllOfLinks? links;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorizationAllOf &&
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
      // ignore: unnecessary_parenthesis
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
  String toString() =>
      'AuthorizationAllOf[createdAt=$createdAt, updatedAt=$updatedAt, orgID=$orgID, permissions=$permissions, id=$id, token=$token, userID=$userID, user=$user, org=$org, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt!.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt!.toUtc().toIso8601String();
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

  /// Returns a new [AuthorizationAllOf] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static AuthorizationAllOf fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return AuthorizationAllOf(
      createdAt: mapDateTime(json, r'createdAt', ''),
      updatedAt: mapDateTime(json, r'updatedAt', ''),
      orgID: mapValueOfType<String>(json, r'orgID'),
      permissions: Permission.listFromJson(json[r'permissions']),
      id: mapValueOfType<String>(json, r'id'),
      token: mapValueOfType<String>(json, r'token'),
      userID: mapValueOfType<String>(json, r'userID'),
      user: mapValueOfType<String>(json, r'user'),
      org: mapValueOfType<String>(json, r'org'),
      links: json[r'links'] == null
          ? null
          : AuthorizationAllOfLinks.fromJson(json[r'links']),
    );
  }

  static List<AuthorizationAllOf>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(AuthorizationAllOf.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <AuthorizationAllOf>[];

  static Map<String, AuthorizationAllOf?> mapFromJson(dynamic json) {
    final map = <String, AuthorizationAllOf?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = AuthorizationAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthorizationAllOf-objects as value to a dart map
  static Map<String, List<AuthorizationAllOf?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<AuthorizationAllOf?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = AuthorizationAllOf.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
