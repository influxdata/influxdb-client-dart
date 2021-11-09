//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Permission {
  /// Returns a new [Permission] instance.
  Permission({
    required this.action,
    required this.resource,
  });

  PermissionActionEnum? action;

  Resource? resource;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Permission &&
          other.action == action &&
          other.resource == resource;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (action == null ? 0 : action.hashCode) +
      (resource == null ? 0 : resource.hashCode);

  @override
  String toString() => 'Permission[action=$action, resource=$resource]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'action'] = action;
    json[r'resource'] = resource;
    return json;
  }

  /// Returns a new [Permission] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Permission fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Permission(
      action: PermissionActionEnum.fromJson(json[r'action']),
      resource: json[r'resource'] == null
          ? null
          : Resource.fromJson(json[r'resource']),
    );
  }

  static List<Permission>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Permission.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Permission>[];

  static Map<String, Permission?> mapFromJson(dynamic json) {
    final map = <String, Permission?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = Permission.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Permission-objects as value to a dart map
  static Map<String, List<Permission?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Permission?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Permission.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
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
  String toString() => value;

  String toJson() => value;

  static const read = PermissionActionEnum._(r'read');
  static const write = PermissionActionEnum._(r'write');

  /// List of all possible values in this [enum][PermissionActionEnum].
  static const values = <PermissionActionEnum>[
    read,
    write,
  ];

  static PermissionActionEnum? fromJson(dynamic value) =>
      PermissionActionEnumTypeTransformer().decode(value);

  static List<PermissionActionEnum?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(PermissionActionEnum.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <PermissionActionEnum>[];
}

/// Transformation class that can [encode] an instance of [PermissionActionEnum] to String,
/// and [decode] dynamic data back to [PermissionActionEnum].
class PermissionActionEnumTypeTransformer {
  factory PermissionActionEnumTypeTransformer() =>
      _instance ??= const PermissionActionEnumTypeTransformer._();

  const PermissionActionEnumTypeTransformer._();

  String encode(PermissionActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PermissionActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PermissionActionEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'read':
          return PermissionActionEnum.read;
        case r'write':
          return PermissionActionEnum.write;
        default:
          return PermissionActionEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [PermissionActionEnumTypeTransformer] instance.
  static PermissionActionEnumTypeTransformer? _instance;
}
