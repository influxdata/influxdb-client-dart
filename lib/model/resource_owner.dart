//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ResourceOwner {
  /// Returns a new [ResourceOwner] instance.
  ResourceOwner({
    this.id,
    this.oauthID,
    required this.name,
    this.status = const ResourceOwnerStatusEnum._('active'),
    this.links,
    this.role = const ResourceOwnerRoleEnum._('owner'),
  });

  String? id;

  String? oauthID;

  String? name;

  /// If inactive the user is inactive.
  ResourceOwnerStatusEnum? status;

  UserResponseLinks? links;

  ResourceOwnerRoleEnum? role;

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
  // ignore: unnecessary_parenthesis
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
      json[r'name'] = name;
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

  /// Returns a new [ResourceOwner] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static ResourceOwner fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return ResourceOwner(
        id: mapValueOfType<String>(json, r'id'),
        oauthID: mapValueOfType<String>(json, r'oauthID'),
        name: mapValueOfType<String>(json, r'name'),
        status: ResourceOwnerStatusEnum.fromJson(json[r'status']),
        links: json[r'links'] == null ? null : UserResponseLinks.fromJson(json[r'links']),
        role: ResourceOwnerRoleEnum.fromJson(json[r'role']),
      );
  }

  static List<ResourceOwner>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ResourceOwner.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ResourceOwner>[];

  static Map<String, ResourceOwner?> mapFromJson(dynamic json) {
    final map = <String, ResourceOwner?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ResourceOwner.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceOwner-objects as value to a dart map
  static Map<String, List<ResourceOwner?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<ResourceOwner?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ResourceOwner.listFromJson(
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
class ResourceOwnerStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceOwnerStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

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

  static ResourceOwnerStatusEnum? fromJson(dynamic value) =>
    ResourceOwnerStatusEnumTypeTransformer().decode(value);

  static List<ResourceOwnerStatusEnum?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ResourceOwnerStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ResourceOwnerStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [ResourceOwnerStatusEnum] to String,
/// and [decode] dynamic data back to [ResourceOwnerStatusEnum].
class ResourceOwnerStatusEnumTypeTransformer {
  factory ResourceOwnerStatusEnumTypeTransformer() => _instance ??= const ResourceOwnerStatusEnumTypeTransformer._();

  const ResourceOwnerStatusEnumTypeTransformer._();

  String encode(ResourceOwnerStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceOwnerStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceOwnerStatusEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'active': return ResourceOwnerStatusEnum.active;
        case r'inactive': return ResourceOwnerStatusEnum.inactive;
        default: return ResourceOwnerStatusEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [ResourceOwnerStatusEnumTypeTransformer] instance.
  static ResourceOwnerStatusEnumTypeTransformer? _instance;
}



class ResourceOwnerRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceOwnerRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const owner = ResourceOwnerRoleEnum._(r'owner');

  /// List of all possible values in this [enum][ResourceOwnerRoleEnum].
  static const values = <ResourceOwnerRoleEnum>[
    owner,
  ];

  static ResourceOwnerRoleEnum? fromJson(dynamic value) =>
    ResourceOwnerRoleEnumTypeTransformer().decode(value);

  static List<ResourceOwnerRoleEnum?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ResourceOwnerRoleEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ResourceOwnerRoleEnum>[];
}

/// Transformation class that can [encode] an instance of [ResourceOwnerRoleEnum] to String,
/// and [decode] dynamic data back to [ResourceOwnerRoleEnum].
class ResourceOwnerRoleEnumTypeTransformer {
  factory ResourceOwnerRoleEnumTypeTransformer() => _instance ??= const ResourceOwnerRoleEnumTypeTransformer._();

  const ResourceOwnerRoleEnumTypeTransformer._();

  String encode(ResourceOwnerRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceOwnerRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceOwnerRoleEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'owner': return ResourceOwnerRoleEnum.owner;
        default: return ResourceOwnerRoleEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [ResourceOwnerRoleEnumTypeTransformer] instance.
  static ResourceOwnerRoleEnumTypeTransformer? _instance;
}


