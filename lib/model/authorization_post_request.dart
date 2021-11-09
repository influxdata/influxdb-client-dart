//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class AuthorizationPostRequest {
  /// Returns a new [AuthorizationPostRequest] instance.
  AuthorizationPostRequest({
    this.status = const AuthorizationPostRequestStatusEnum._('active'),
    this.description,
    required this.orgID,
    this.userID,
    this.permissions = const [],
  });

  /// If inactive the token is inactive and requests using the token will be rejected.
  AuthorizationPostRequestStatusEnum? status;

  /// A description of the token.
  String? description;

  /// ID of org that authorization is scoped to.
  String? orgID;

  /// ID of user that authorization is scoped to.
  String? userID;

  /// List of permissions for an auth.  An auth must have at least one Permission.
  List<Permission>? permissions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorizationPostRequest &&
          other.status == status &&
          other.description == description &&
          other.orgID == orgID &&
          other.userID == userID &&
          other.permissions == permissions;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status == null ? 0 : status.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (orgID == null ? 0 : orgID.hashCode) +
      (userID == null ? 0 : userID.hashCode) +
      (permissions == null ? 0 : permissions.hashCode);

  @override
  String toString() =>
      'AuthorizationPostRequest[status=$status, description=$description, orgID=$orgID, userID=$userID, permissions=$permissions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (status != null) {
      json[r'status'] = status;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    json[r'orgID'] = orgID;
    if (userID != null) {
      json[r'userID'] = userID;
    }
    json[r'permissions'] = permissions;
    return json;
  }

  /// Returns a new [AuthorizationPostRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static AuthorizationPostRequest fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return AuthorizationPostRequest(
      status: AuthorizationPostRequestStatusEnum.fromJson(json[r'status']),
      description: mapValueOfType<String>(json, r'description'),
      orgID: mapValueOfType<String>(json, r'orgID'),
      userID: mapValueOfType<String>(json, r'userID'),
      permissions: Permission.listFromJson(json[r'permissions']),
    );
  }

  static List<AuthorizationPostRequest>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(AuthorizationPostRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <AuthorizationPostRequest>[];

  static Map<String, AuthorizationPostRequest?> mapFromJson(dynamic json) {
    final map = <String, AuthorizationPostRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = AuthorizationPostRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthorizationPostRequest-objects as value to a dart map
  static Map<String, List<AuthorizationPostRequest?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<AuthorizationPostRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = AuthorizationPostRequest.listFromJson(
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
class AuthorizationPostRequestStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AuthorizationPostRequestStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = AuthorizationPostRequestStatusEnum._(r'active');
  static const inactive = AuthorizationPostRequestStatusEnum._(r'inactive');

  /// List of all possible values in this [enum][AuthorizationPostRequestStatusEnum].
  static const values = <AuthorizationPostRequestStatusEnum>[
    active,
    inactive,
  ];

  static AuthorizationPostRequestStatusEnum? fromJson(dynamic value) =>
      AuthorizationPostRequestStatusEnumTypeTransformer().decode(value);

  static List<AuthorizationPostRequestStatusEnum?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(AuthorizationPostRequestStatusEnum.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <AuthorizationPostRequestStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [AuthorizationPostRequestStatusEnum] to String,
/// and [decode] dynamic data back to [AuthorizationPostRequestStatusEnum].
class AuthorizationPostRequestStatusEnumTypeTransformer {
  factory AuthorizationPostRequestStatusEnumTypeTransformer() =>
      _instance ??= const AuthorizationPostRequestStatusEnumTypeTransformer._();

  const AuthorizationPostRequestStatusEnumTypeTransformer._();

  String encode(AuthorizationPostRequestStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuthorizationPostRequestStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuthorizationPostRequestStatusEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'active':
          return AuthorizationPostRequestStatusEnum.active;
        case r'inactive':
          return AuthorizationPostRequestStatusEnum.inactive;
        default:
          return AuthorizationPostRequestStatusEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [AuthorizationPostRequestStatusEnumTypeTransformer] instance.
  static AuthorizationPostRequestStatusEnumTypeTransformer? _instance;
}
