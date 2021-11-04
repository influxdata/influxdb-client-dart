//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class User {
  /// Returns a new [User] instance.
  User({
    this.id,
    this.oauthID,
    required this.name,
    this.status = const UserStatusEnum._('active'),
  });

  String? id;

  String? oauthID;

  String? name;

  /// If inactive the user is inactive.
  UserStatusEnum? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
     other.id == id &&
     other.oauthID == oauthID &&
     other.name == name &&
     other.status == status;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (oauthID == null ? 0 : oauthID.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (status == null ? 0 : status.hashCode);

  @override
  String toString() => 'User[id=$id, oauthID=$oauthID, name=$name, status=$status]';

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
    return json;
  }

  /// Returns a new [User] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static User fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return User(
        id: mapValueOfType<String>(json, r'id'),
        oauthID: mapValueOfType<String>(json, r'oauthID'),
        name: mapValueOfType<String>(json, r'name'),
        status: UserStatusEnum.fromJson(json[r'status']),
      );
  }

  static List<User>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(User.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <User>[];

  static Map<String, User?> mapFromJson(dynamic json) {
    final map = <String, User?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<User?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = User.listFromJson(
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
class UserStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const UserStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = UserStatusEnum._(r'active');
  static const inactive = UserStatusEnum._(r'inactive');

  /// List of all possible values in this [enum][UserStatusEnum].
  static const values = <UserStatusEnum>[
    active,
    inactive,
  ];

  static UserStatusEnum? fromJson(dynamic value) =>
    UserStatusEnumTypeTransformer().decode(value);

  static List<UserStatusEnum?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UserStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UserStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [UserStatusEnum] to String,
/// and [decode] dynamic data back to [UserStatusEnum].
class UserStatusEnumTypeTransformer {
  factory UserStatusEnumTypeTransformer() => _instance ??= const UserStatusEnumTypeTransformer._();

  const UserStatusEnumTypeTransformer._();

  String encode(UserStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserStatusEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'active': return UserStatusEnum.active;
        case r'inactive': return UserStatusEnum.inactive;
        default: return UserStatusEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [UserStatusEnumTypeTransformer] instance.
  static UserStatusEnumTypeTransformer? _instance;
}


