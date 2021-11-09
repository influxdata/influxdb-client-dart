//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class UserResponse {
  /// Returns a new [UserResponse] instance.
  UserResponse({
    this.id,
    this.oauthID,
    required this.name,
    this.status = const UserResponseStatusEnum._('active'),
    this.links,
  });

  String? id;

  String? oauthID;

  String? name;

  /// If inactive the user is inactive.
  UserResponseStatusEnum? status;

  UserResponseLinks? links;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserResponse &&
          other.id == id &&
          other.oauthID == oauthID &&
          other.name == name &&
          other.status == status &&
          other.links == links;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id.hashCode) +
      (oauthID == null ? 0 : oauthID.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (status == null ? 0 : status.hashCode) +
      (links == null ? 0 : links.hashCode);

  @override
  String toString() =>
      'UserResponse[id=$id, oauthID=$oauthID, name=$name, status=$status, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (oauthID != null) {
      json[r'oauthID'] = oauthID;
    }
    json[r'name'] = name;
    if (status != null) {
      json[r'status'] = status;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [UserResponse] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static UserResponse fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return UserResponse(
      id: mapValueOfType<String>(json, r'id'),
      oauthID: mapValueOfType<String>(json, r'oauthID'),
      name: mapValueOfType<String>(json, r'name'),
      status: UserResponseStatusEnum.fromJson(json[r'status']),
      links: json[r'links'] == null
          ? null
          : UserResponseLinks.fromJson(json[r'links']),
    );
  }

  static List<UserResponse>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(UserResponse.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <UserResponse>[];

  static Map<String, UserResponse?> mapFromJson(dynamic json) {
    final map = <String, UserResponse?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = UserResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserResponse-objects as value to a dart map
  static Map<String, List<UserResponse?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<UserResponse?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = UserResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

/// If inactive the user is inactive.
class UserResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const UserResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = UserResponseStatusEnum._(r'active');
  static const inactive = UserResponseStatusEnum._(r'inactive');

  /// List of all possible values in this [enum][UserResponseStatusEnum].
  static const values = <UserResponseStatusEnum>[
    active,
    inactive,
  ];

  static UserResponseStatusEnum? fromJson(dynamic value) =>
      UserResponseStatusEnumTypeTransformer().decode(value);

  static List<UserResponseStatusEnum?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(UserResponseStatusEnum.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <UserResponseStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [UserResponseStatusEnum] to String,
/// and [decode] dynamic data back to [UserResponseStatusEnum].
class UserResponseStatusEnumTypeTransformer {
  factory UserResponseStatusEnumTypeTransformer() =>
      _instance ??= const UserResponseStatusEnumTypeTransformer._();

  const UserResponseStatusEnumTypeTransformer._();

  String encode(UserResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserResponseStatusEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'active':
          return UserResponseStatusEnum.active;
        case r'inactive':
          return UserResponseStatusEnum.inactive;
        default:
          return UserResponseStatusEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [UserResponseStatusEnumTypeTransformer] instance.
  static UserResponseStatusEnumTypeTransformer? _instance;
}
