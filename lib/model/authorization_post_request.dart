//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  List<Permission?>? permissions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorizationPostRequest &&
     other.status == status &&
     other.description == description &&
     other.orgID == orgID &&
     other.userID == userID &&
     other.permissions == permissions;

  @override
  int get hashCode =>
    (status == null ? 0 : status.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (orgID == null ? 0 : orgID.hashCode) +
    (userID == null ? 0 : userID.hashCode) +
    (permissions == null ? 0 : permissions.hashCode);

  @override
  String toString() => 'AuthorizationPostRequest[status=$status, description=$description, orgID=$orgID, userID=$userID, permissions=$permissions]';

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

  /// Returns a new [AuthorizationPostRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuthorizationPostRequest? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : AuthorizationPostRequest(
        status: AuthorizationPostRequestStatusEnum.fromJson(json[r'status']),
        description: json[r'description'],
        orgID: json[r'orgID'],
        userID: json[r'userID'],
        permissions: Permission.listFromJson(json[r'permissions']),
    );

  static List<AuthorizationPostRequest?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <AuthorizationPostRequest>[]
      : json.map((dynamic value) => AuthorizationPostRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, AuthorizationPostRequest?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuthorizationPostRequest?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = AuthorizationPostRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthorizationPostRequest-objects as value to a dart map
  static Map<String, List<AuthorizationPostRequest?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<AuthorizationPostRequest?>?> map = <String, List<AuthorizationPostRequest>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = AuthorizationPostRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
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

  static List<AuthorizationPostRequestStatusEnum?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <AuthorizationPostRequestStatusEnum>[]
      : json
          .map((value) => AuthorizationPostRequestStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [AuthorizationPostRequestStatusEnum] to String,
/// and [decode] dynamic data back to [AuthorizationPostRequestStatusEnum].
class AuthorizationPostRequestStatusEnumTypeTransformer {
  const AuthorizationPostRequestStatusEnumTypeTransformer._();

  factory AuthorizationPostRequestStatusEnumTypeTransformer() => _instance ??= AuthorizationPostRequestStatusEnumTypeTransformer._();

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
    switch (data) {
      case r'active': return AuthorizationPostRequestStatusEnum.active;
      case r'inactive': return AuthorizationPostRequestStatusEnum.inactive;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [AuthorizationPostRequestStatusEnumTypeTransformer] instance.
  static AuthorizationPostRequestStatusEnumTypeTransformer? _instance;
}

