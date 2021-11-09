//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Authorization {
  /// Returns a new [Authorization] instance.
  Authorization({
    this.status = const AuthorizationStatusEnum._('active'),
    this.description,
    this.createdAt,
    this.updatedAt,
    required this.orgID,
    this.permissions = const [],
    this.id,
    this.token,
    this.userID,
    this.user,
    this.org,
    this.links,
  });

  /// If inactive the token is inactive and requests using the token will be rejected.
  AuthorizationStatusEnum? status;

  /// A description of the token.
  String? description;

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
      other is Authorization &&
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
      // ignore: unnecessary_parenthesis
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
  String toString() =>
      'Authorization[status=$status, description=$description, createdAt=$createdAt, updatedAt=$updatedAt, orgID=$orgID, permissions=$permissions, id=$id, token=$token, userID=$userID, user=$user, org=$org, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (status != null) {
      json[r'status'] = status;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt!.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt!.toUtc().toIso8601String();
    }
    json[r'orgID'] = orgID;
    json[r'permissions'] = permissions;
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

  /// Returns a new [Authorization] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Authorization fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Authorization(
      status: AuthorizationStatusEnum.fromJson(json[r'status']),
      description: mapValueOfType<String>(json, r'description'),
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

  static List<Authorization>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Authorization.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Authorization>[];

  static Map<String, Authorization?> mapFromJson(dynamic json) {
    final map = <String, Authorization?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = Authorization.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Authorization-objects as value to a dart map
  static Map<String, List<Authorization?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Authorization?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Authorization.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
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
  String toString() => value;

  String toJson() => value;

  static const active = AuthorizationStatusEnum._(r'active');
  static const inactive = AuthorizationStatusEnum._(r'inactive');

  /// List of all possible values in this [enum][AuthorizationStatusEnum].
  static const values = <AuthorizationStatusEnum>[
    active,
    inactive,
  ];

  static AuthorizationStatusEnum? fromJson(dynamic value) =>
      AuthorizationStatusEnumTypeTransformer().decode(value);

  static List<AuthorizationStatusEnum?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(AuthorizationStatusEnum.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <AuthorizationStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [AuthorizationStatusEnum] to String,
/// and [decode] dynamic data back to [AuthorizationStatusEnum].
class AuthorizationStatusEnumTypeTransformer {
  factory AuthorizationStatusEnumTypeTransformer() =>
      _instance ??= const AuthorizationStatusEnumTypeTransformer._();

  const AuthorizationStatusEnumTypeTransformer._();

  String encode(AuthorizationStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuthorizationStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuthorizationStatusEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'active':
          return AuthorizationStatusEnum.active;
        case r'inactive':
          return AuthorizationStatusEnum.inactive;
        default:
          return AuthorizationStatusEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [AuthorizationStatusEnumTypeTransformer] instance.
  static AuthorizationStatusEnumTypeTransformer? _instance;
}
