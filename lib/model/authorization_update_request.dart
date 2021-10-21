//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class AuthorizationUpdateRequest {
  /// Returns a new [AuthorizationUpdateRequest] instance.
  AuthorizationUpdateRequest({
    this.status = const AuthorizationUpdateRequestStatusEnum._('active'),
    this.description,
  });

  /// If inactive the token is inactive and requests using the token will be rejected.
  AuthorizationUpdateRequestStatusEnum? status;

  /// A description of the token.
  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthorizationUpdateRequest &&
     other.status == status &&
     other.description == description;

  @override
  int get hashCode =>
    (status == null ? 0 : status.hashCode) +
    (description == null ? 0 : description.hashCode);

  @override
  String toString() => 'AuthorizationUpdateRequest[status=$status, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (status != null) {
      json[r'status'] = status;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    return json;
  }

  /// Returns a new [AuthorizationUpdateRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuthorizationUpdateRequest? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : AuthorizationUpdateRequest(
        status: AuthorizationUpdateRequestStatusEnum.fromJson(json[r'status']),
        description: json[r'description'],
    );

  static List<AuthorizationUpdateRequest?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <AuthorizationUpdateRequest>[]
      : json.map((dynamic value) => AuthorizationUpdateRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, AuthorizationUpdateRequest?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuthorizationUpdateRequest?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = AuthorizationUpdateRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthorizationUpdateRequest-objects as value to a dart map
  static Map<String, List<AuthorizationUpdateRequest?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<AuthorizationUpdateRequest?>?> map = <String, List<AuthorizationUpdateRequest>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = AuthorizationUpdateRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

/// If inactive the token is inactive and requests using the token will be rejected.
class AuthorizationUpdateRequestStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AuthorizationUpdateRequestStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = AuthorizationUpdateRequestStatusEnum._(r'active');
  static const inactive = AuthorizationUpdateRequestStatusEnum._(r'inactive');

  /// List of all possible values in this [enum][AuthorizationUpdateRequestStatusEnum].
  static const values = <AuthorizationUpdateRequestStatusEnum>[
    active,
    inactive,
  ];

  static AuthorizationUpdateRequestStatusEnum? fromJson(dynamic value) =>
    AuthorizationUpdateRequestStatusEnumTypeTransformer().decode(value);

  static List<AuthorizationUpdateRequestStatusEnum?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <AuthorizationUpdateRequestStatusEnum>[]
      : json
          .map((value) => AuthorizationUpdateRequestStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [AuthorizationUpdateRequestStatusEnum] to String,
/// and [decode] dynamic data back to [AuthorizationUpdateRequestStatusEnum].
class AuthorizationUpdateRequestStatusEnumTypeTransformer {
  const AuthorizationUpdateRequestStatusEnumTypeTransformer._();

  factory AuthorizationUpdateRequestStatusEnumTypeTransformer() => _instance ??= AuthorizationUpdateRequestStatusEnumTypeTransformer._();

  String encode(AuthorizationUpdateRequestStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuthorizationUpdateRequestStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuthorizationUpdateRequestStatusEnum? decode(dynamic data, {bool? allowNull}) {
    switch (data) {
      case r'active': return AuthorizationUpdateRequestStatusEnum.active;
      case r'inactive': return AuthorizationUpdateRequestStatusEnum.inactive;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [AuthorizationUpdateRequestStatusEnumTypeTransformer] instance.
  static AuthorizationUpdateRequestStatusEnumTypeTransformer? _instance;
}

