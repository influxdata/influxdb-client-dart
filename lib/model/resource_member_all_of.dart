//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  /// Returns a new [ResourceMemberAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResourceMemberAllOf? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : ResourceMemberAllOf(
        role: ResourceMemberAllOfRoleEnum.fromJson(json[r'role']),
    );

  static List<ResourceMemberAllOf?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <ResourceMemberAllOf>[]
      : json.map((dynamic value) => ResourceMemberAllOf.fromJson(value)).toList(growable: true == growable);

  static Map<String, ResourceMemberAllOf?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResourceMemberAllOf?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ResourceMemberAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceMemberAllOf-objects as value to a dart map
  static Map<String, List<ResourceMemberAllOf?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<ResourceMemberAllOf?>?> map = <String, List<ResourceMemberAllOf>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ResourceMemberAllOf.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
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

  static List<ResourceMemberAllOfRoleEnum?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <ResourceMemberAllOfRoleEnum>[]
      : json
          .map((value) => ResourceMemberAllOfRoleEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ResourceMemberAllOfRoleEnum] to String,
/// and [decode] dynamic data back to [ResourceMemberAllOfRoleEnum].
class ResourceMemberAllOfRoleEnumTypeTransformer {
  const ResourceMemberAllOfRoleEnumTypeTransformer._();

  factory ResourceMemberAllOfRoleEnumTypeTransformer() => _instance ??= ResourceMemberAllOfRoleEnumTypeTransformer._();

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
    switch (data) {
      case r'member': return ResourceMemberAllOfRoleEnum.member;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ResourceMemberAllOfRoleEnumTypeTransformer] instance.
  static ResourceMemberAllOfRoleEnumTypeTransformer? _instance;
}

