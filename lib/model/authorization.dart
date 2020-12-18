//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Authorization {
  /// Returns a new [Authorization] instance.
  Authorization({
    this.status = const AuthorizationStatusEnum._('active'),
    this.description,
    this.createdAt,
    this.updatedAt,
    @required this.orgID,
    this.permissions = const [],
    this.id,
    this.token,
    this.userID,
    this.user,
    this.org,
    this.links,
  });

  /// If inactive the token is inactive and requests using the token will be rejected.
  AuthorizationStatusEnum status;

  /// A description of the token.
  String description;

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
  bool operator ==(Object other) => identical(this, other) || other is Authorization &&
     other.status == status &&
     other.description == description &&
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
    (status == null ? 0 : status.hashCode) +
    (description == null ? 0 : description.hashCode) +
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
  String toString() => 'Authorization[status=$status, description=$description, createdAt=$createdAt, updatedAt=$updatedAt, orgID=$orgID, permissions=$permissions, id=$id, token=$token, userID=$userID, user=$user, org=$org, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (status != null) {
      json[r'status'] = status;
    }
    if (description != null) {
      json[r'description'] = description;
    }
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

  /// Returns a new [Authorization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Authorization fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Authorization(
        status: AuthorizationStatusEnum.fromJson(json[r'status']),
        description: json[r'description'],
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

  static List<Authorization> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Authorization>[]
      : json.map((v) => Authorization.fromJson(v)).toList(growable: true == growable);

  static Map<String, Authorization> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Authorization>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Authorization.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Authorization-objects as value to a dart map
  static Map<String, List<Authorization>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Authorization>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Authorization.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// If inactive the token is inactive and requests using the token will be rejected.
class AuthorizationStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AuthorizationStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AuthorizationStatusEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = AuthorizationStatusEnum._(r'active');
  static const inactive = AuthorizationStatusEnum._(r'inactive');

  /// List of all possible values in this [enum][AuthorizationStatusEnum].
  static const values = <AuthorizationStatusEnum>[
    active,
    inactive,
  ];

  static AuthorizationStatusEnum fromJson(dynamic value) =>
    AuthorizationStatusEnumTypeTransformer().decode(value);

  static List<AuthorizationStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuthorizationStatusEnum>[]
      : json
          .map((value) => AuthorizationStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [AuthorizationStatusEnum] to String,
/// and [decode] dynamic data back to [AuthorizationStatusEnum].
class AuthorizationStatusEnumTypeTransformer {
  const AuthorizationStatusEnumTypeTransformer._();

  factory AuthorizationStatusEnumTypeTransformer() => _instance ??= AuthorizationStatusEnumTypeTransformer._();

  String encode(AuthorizationStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuthorizationStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuthorizationStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'active': return AuthorizationStatusEnum.active;
      case r'inactive': return AuthorizationStatusEnum.inactive;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [AuthorizationStatusEnumTypeTransformer] instance.
  static AuthorizationStatusEnumTypeTransformer _instance;
}

