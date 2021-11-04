//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ResourceOwnerAllOf {
  /// Returns a new [ResourceOwnerAllOf] instance.
  ResourceOwnerAllOf({
    this.role = const ResourceOwnerAllOfRoleEnum._('owner'),
  });

  ResourceOwnerAllOfRoleEnum? role;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourceOwnerAllOf && other.role == role;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (role == null ? 0 : role.hashCode);

  @override
  String toString() => 'ResourceOwnerAllOf[role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (role != null) {
      json[r'role'] = role;
    }
    return json;
  }

  /// Returns a new [ResourceOwnerAllOf] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static ResourceOwnerAllOf fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return ResourceOwnerAllOf(
      role: ResourceOwnerAllOfRoleEnum.fromJson(json[r'role']),
    );
  }

  static List<ResourceOwnerAllOf>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ResourceOwnerAllOf.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ResourceOwnerAllOf>[];

  static Map<String, ResourceOwnerAllOf?> mapFromJson(dynamic json) {
    final map = <String, ResourceOwnerAllOf?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = ResourceOwnerAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceOwnerAllOf-objects as value to a dart map
  static Map<String, List<ResourceOwnerAllOf?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<ResourceOwnerAllOf?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = ResourceOwnerAllOf.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

class ResourceOwnerAllOfRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceOwnerAllOfRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const owner = ResourceOwnerAllOfRoleEnum._(r'owner');

  /// List of all possible values in this [enum][ResourceOwnerAllOfRoleEnum].
  static const values = <ResourceOwnerAllOfRoleEnum>[
    owner,
  ];

  static ResourceOwnerAllOfRoleEnum? fromJson(dynamic value) =>
      ResourceOwnerAllOfRoleEnumTypeTransformer().decode(value);

  static List<ResourceOwnerAllOfRoleEnum?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ResourceOwnerAllOfRoleEnum.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ResourceOwnerAllOfRoleEnum>[];
}

/// Transformation class that can [encode] an instance of [ResourceOwnerAllOfRoleEnum] to String,
/// and [decode] dynamic data back to [ResourceOwnerAllOfRoleEnum].
class ResourceOwnerAllOfRoleEnumTypeTransformer {
  factory ResourceOwnerAllOfRoleEnumTypeTransformer() =>
      _instance ??= const ResourceOwnerAllOfRoleEnumTypeTransformer._();

  const ResourceOwnerAllOfRoleEnumTypeTransformer._();

  String encode(ResourceOwnerAllOfRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceOwnerAllOfRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceOwnerAllOfRoleEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'owner':
          return ResourceOwnerAllOfRoleEnum.owner;
        default:
          return ResourceOwnerAllOfRoleEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [ResourceOwnerAllOfRoleEnumTypeTransformer] instance.
  static ResourceOwnerAllOfRoleEnumTypeTransformer? _instance;
}
