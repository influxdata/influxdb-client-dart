//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ResourceMember {
  /// Returns a new [ResourceMember] instance.
  ResourceMember({
    this.id,
    this.oauthID,
    required this.name,
    this.status = const ResourceMemberStatusEnum._('active'),
    this.links,
    this.role = const ResourceMemberRoleEnum._('member'),
  });

  String? id;

  String? oauthID;

  String? name;

  /// If inactive the user is inactive.
  ResourceMemberStatusEnum? status;

  UserResponseLinks? links;

  ResourceMemberRoleEnum? role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceMember &&
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
  String toString() => 'ResourceMember[id=$id, oauthID=$oauthID, name=$name, status=$status, links=$links, role=$role]';

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

  /// Returns a new [ResourceMember] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResourceMember? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : ResourceMember(
        id: json[r'id'],
        oauthID: json[r'oauthID'],
        name: json[r'name'],
        status: ResourceMemberStatusEnum.fromJson(json[r'status']),
        links: UserResponseLinks.fromJson(json[r'links']),
        role: ResourceMemberRoleEnum.fromJson(json[r'role']),
    );

  static List<ResourceMember?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <ResourceMember>[]
      : json.map((dynamic value) => ResourceMember.fromJson(value)).toList(growable: true == growable);

  static Map<String, ResourceMember?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResourceMember?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ResourceMember.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceMember-objects as value to a dart map
  static Map<String, List<ResourceMember?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<ResourceMember?>?> map = <String, List<ResourceMember>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ResourceMember.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

/// If inactive the user is inactive.
class ResourceMemberStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceMemberStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = ResourceMemberStatusEnum._(r'active');
  static const inactive = ResourceMemberStatusEnum._(r'inactive');

  /// List of all possible values in this [enum][ResourceMemberStatusEnum].
  static const values = <ResourceMemberStatusEnum>[
    active,
    inactive,
  ];

  static ResourceMemberStatusEnum? fromJson(dynamic value) =>
    ResourceMemberStatusEnumTypeTransformer().decode(value);

  static List<ResourceMemberStatusEnum?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <ResourceMemberStatusEnum>[]
      : json
          .map((value) => ResourceMemberStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ResourceMemberStatusEnum] to String,
/// and [decode] dynamic data back to [ResourceMemberStatusEnum].
class ResourceMemberStatusEnumTypeTransformer {
  const ResourceMemberStatusEnumTypeTransformer._();

  factory ResourceMemberStatusEnumTypeTransformer() => _instance ??= ResourceMemberStatusEnumTypeTransformer._();

  String encode(ResourceMemberStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceMemberStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceMemberStatusEnum? decode(dynamic data, {bool? allowNull}) {
    switch (data) {
      case r'active': return ResourceMemberStatusEnum.active;
      case r'inactive': return ResourceMemberStatusEnum.inactive;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ResourceMemberStatusEnumTypeTransformer] instance.
  static ResourceMemberStatusEnumTypeTransformer? _instance;
}


class ResourceMemberRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceMemberRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const member = ResourceMemberRoleEnum._(r'member');

  /// List of all possible values in this [enum][ResourceMemberRoleEnum].
  static const values = <ResourceMemberRoleEnum>[
    member,
  ];

  static ResourceMemberRoleEnum? fromJson(dynamic value) =>
    ResourceMemberRoleEnumTypeTransformer().decode(value);

  static List<ResourceMemberRoleEnum?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <ResourceMemberRoleEnum>[]
      : json
          .map((value) => ResourceMemberRoleEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ResourceMemberRoleEnum] to String,
/// and [decode] dynamic data back to [ResourceMemberRoleEnum].
class ResourceMemberRoleEnumTypeTransformer {
  const ResourceMemberRoleEnumTypeTransformer._();

  factory ResourceMemberRoleEnumTypeTransformer() => _instance ??= ResourceMemberRoleEnumTypeTransformer._();

  String encode(ResourceMemberRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceMemberRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceMemberRoleEnum? decode(dynamic data, {bool? allowNull}) {
    switch (data) {
      case r'member': return ResourceMemberRoleEnum.member;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ResourceMemberRoleEnumTypeTransformer] instance.
  static ResourceMemberRoleEnumTypeTransformer? _instance;
}

