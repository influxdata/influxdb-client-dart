//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Permission {
  /// Returns a new [Permission] instance.
  Permission({
    @required this.action,
    @required this.resource,
  });

  PermissionActionEnum action;

  Resource resource;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Permission &&
     other.action == action &&
     other.resource == resource;

  @override
  int get hashCode =>
    (action == null ? 0 : action.hashCode) +
    (resource == null ? 0 : resource.hashCode);

  @override
  String toString() => 'Permission[action=$action, resource=$resource]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (action != null) {
      json[r'action'] = action;
    }
    if (resource != null) {
      json[r'resource'] = resource;
    }
    return json;
  }

  /// Returns a new [Permission] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Permission fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Permission(
        action: PermissionActionEnum.fromJson(json[r'action']),
        resource: Resource.fromJson(json[r'resource']),
    );

  static List<Permission> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Permission>[]
      : json.map((v) => Permission.fromJson(v)).toList(growable: true == growable);

  static Map<String, Permission> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Permission>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Permission.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Permission-objects as value to a dart map
  static Map<String, List<Permission>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Permission>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Permission.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class PermissionActionEnum {
  /// Instantiate a new enum with the provided [value].
  const PermissionActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PermissionActionEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const read = PermissionActionEnum._(r'read');
  static const write = PermissionActionEnum._(r'write');

  /// List of all possible values in this [enum][PermissionActionEnum].
  static const values = <PermissionActionEnum>[
    read,
    write,
  ];

  static PermissionActionEnum fromJson(dynamic value) =>
    PermissionActionEnumTypeTransformer().decode(value);

  static List<PermissionActionEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PermissionActionEnum>[]
      : json
          .map((value) => PermissionActionEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [PermissionActionEnum] to String,
/// and [decode] dynamic data back to [PermissionActionEnum].
class PermissionActionEnumTypeTransformer {
  const PermissionActionEnumTypeTransformer._();

  factory PermissionActionEnumTypeTransformer() => _instance ??= PermissionActionEnumTypeTransformer._();

  String encode(PermissionActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PermissionActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PermissionActionEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'read': return PermissionActionEnum.read;
      case r'write': return PermissionActionEnum.write;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PermissionActionEnumTypeTransformer] instance.
  static PermissionActionEnumTypeTransformer _instance;
}

