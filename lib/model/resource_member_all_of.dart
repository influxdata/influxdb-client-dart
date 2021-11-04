//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ResourceMemberAllOf {
  /// Returns a new [ResourceMemberAllOf] instance.
  ResourceMemberAllOf({
    this.role = const ResourceMemberAllOfRoleEnum._('member'),
  });

  ResourceMemberAllOfRoleEnum? role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceMemberAllOf &&
     other.role == role;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (role == null ? 0 : role.hashCode);

  @override
  String toString() => 'ResourceMemberAllOf[role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (role != null) {
      json[r'role'] = role;
    }
    return json;
  }

  /// Returns a new [ResourceMemberAllOf] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static ResourceMemberAllOf fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return ResourceMemberAllOf(
        role: ResourceMemberAllOfRoleEnum.fromJson(json[r'role']),
      );
  }

  static List<ResourceMemberAllOf>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ResourceMemberAllOf.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ResourceMemberAllOf>[];

  static Map<String, ResourceMemberAllOf?> mapFromJson(dynamic json) {
    final map = <String, ResourceMemberAllOf?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ResourceMemberAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceMemberAllOf-objects as value to a dart map
  static Map<String, List<ResourceMemberAllOf?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<ResourceMemberAllOf?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ResourceMemberAllOf.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class ResourceMemberAllOfRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceMemberAllOfRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const member = ResourceMemberAllOfRoleEnum._(r'member');

  /// List of all possible values in this [enum][ResourceMemberAllOfRoleEnum].
  static const values = <ResourceMemberAllOfRoleEnum>[
    member,
  ];

  static ResourceMemberAllOfRoleEnum? fromJson(dynamic value) =>
    ResourceMemberAllOfRoleEnumTypeTransformer().decode(value);

  static List<ResourceMemberAllOfRoleEnum?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ResourceMemberAllOfRoleEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ResourceMemberAllOfRoleEnum>[];
}

/// Transformation class that can [encode] an instance of [ResourceMemberAllOfRoleEnum] to String,
/// and [decode] dynamic data back to [ResourceMemberAllOfRoleEnum].
class ResourceMemberAllOfRoleEnumTypeTransformer {
  factory ResourceMemberAllOfRoleEnumTypeTransformer() => _instance ??= const ResourceMemberAllOfRoleEnumTypeTransformer._();

  const ResourceMemberAllOfRoleEnumTypeTransformer._();

  String encode(ResourceMemberAllOfRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceMemberAllOfRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceMemberAllOfRoleEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'member': return ResourceMemberAllOfRoleEnum.member;
        default: return ResourceMemberAllOfRoleEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [ResourceMemberAllOfRoleEnumTypeTransformer] instance.
  static ResourceMemberAllOfRoleEnumTypeTransformer? _instance;
}


