//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ResourceOwner {
  /// Returns a new [ResourceOwner] instance.
  ResourceOwner({
    this.id,
    this.oauthID,
    @required this.name,
    this.status = const ResourceOwnerStatusEnum._('active'),
    this.links,
    this.role = const ResourceOwnerRoleEnum._('owner'),
  });

  String id;

  String oauthID;

  String name;

  /// If inactive the user is inactive.
  ResourceOwnerStatusEnum status;

  UserLinks links;

  ResourceOwnerRoleEnum role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceOwner &&
     other.id == id &&
     other.oauthID == oauthID &&
     other.name == name &&
     other.status == status &&
     other.links == links &&
     other.role == role;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (oauthID == null ? 0 : oauthID.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (role == null ? 0 : role.hashCode);

  @override
  String toString() => 'ResourceOwner[id=$id, oauthID=$oauthID, name=$name, status=$status, links=$links, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (oauthID != null) {
      json[r'oauthID'] = oauthID;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    if (role != null) {
      json[r'role'] = role;
    }
    return json;
  }

  /// Returns a new [ResourceOwner] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResourceOwner fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResourceOwner(
        id: json[r'id'],
        oauthID: json[r'oauthID'],
        name: json[r'name'],
        status: ResourceOwnerStatusEnum.fromJson(json[r'status']),
        links: UserLinks.fromJson(json[r'links']),
        role: ResourceOwnerRoleEnum.fromJson(json[r'role']),
    );

  static List<ResourceOwner> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResourceOwner>[]
      : json.map((v) => ResourceOwner.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResourceOwner> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResourceOwner>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResourceOwner.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResourceOwner-objects as value to a dart map
  static Map<String, List<ResourceOwner>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResourceOwner>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResourceOwner.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// If inactive the user is inactive.
class ResourceOwnerStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceOwnerStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ResourceOwnerStatusEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = ResourceOwnerStatusEnum._(r'active');
  static const inactive = ResourceOwnerStatusEnum._(r'inactive');

  /// List of all possible values in this [enum][ResourceOwnerStatusEnum].
  static const values = <ResourceOwnerStatusEnum>[
    active,
    inactive,
  ];

  static ResourceOwnerStatusEnum fromJson(dynamic value) =>
    ResourceOwnerStatusEnumTypeTransformer().decode(value);

  static List<ResourceOwnerStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResourceOwnerStatusEnum>[]
      : json
          .map((value) => ResourceOwnerStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ResourceOwnerStatusEnum] to String,
/// and [decode] dynamic data back to [ResourceOwnerStatusEnum].
class ResourceOwnerStatusEnumTypeTransformer {
  const ResourceOwnerStatusEnumTypeTransformer._();

  factory ResourceOwnerStatusEnumTypeTransformer() => _instance ??= ResourceOwnerStatusEnumTypeTransformer._();

  String encode(ResourceOwnerStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceOwnerStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceOwnerStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'active': return ResourceOwnerStatusEnum.active;
      case r'inactive': return ResourceOwnerStatusEnum.inactive;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ResourceOwnerStatusEnumTypeTransformer] instance.
  static ResourceOwnerStatusEnumTypeTransformer _instance;
}


class ResourceOwnerRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceOwnerRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ResourceOwnerRoleEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const owner = ResourceOwnerRoleEnum._(r'owner');

  /// List of all possible values in this [enum][ResourceOwnerRoleEnum].
  static const values = <ResourceOwnerRoleEnum>[
    owner,
  ];

  static ResourceOwnerRoleEnum fromJson(dynamic value) =>
    ResourceOwnerRoleEnumTypeTransformer().decode(value);

  static List<ResourceOwnerRoleEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResourceOwnerRoleEnum>[]
      : json
          .map((value) => ResourceOwnerRoleEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ResourceOwnerRoleEnum] to String,
/// and [decode] dynamic data back to [ResourceOwnerRoleEnum].
class ResourceOwnerRoleEnumTypeTransformer {
  const ResourceOwnerRoleEnumTypeTransformer._();

  factory ResourceOwnerRoleEnumTypeTransformer() => _instance ??= ResourceOwnerRoleEnumTypeTransformer._();

  String encode(ResourceOwnerRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceOwnerRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceOwnerRoleEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'owner': return ResourceOwnerRoleEnum.owner;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ResourceOwnerRoleEnumTypeTransformer] instance.
  static ResourceOwnerRoleEnumTypeTransformer _instance;
}

