//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Organization {
  /// Returns a new [Organization] instance.
  Organization({
    this.links,
    this.id,
    required this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.status = const OrganizationStatusEnum._('active'),
  });

  OrganizationLinks? links;

  String? id;

  String? name;

  String? description;

  DateTime? createdAt;

  DateTime? updatedAt;

  /// If inactive the organization is inactive.
  OrganizationStatusEnum? status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Organization &&
          other.links == links &&
          other.id == id &&
          other.name == name &&
          other.description == description &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.status == status;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (status == null ? 0 : status.hashCode);

  @override
  String toString() =>
      'Organization[links=$links, id=$id, name=$name, description=$description, createdAt=$createdAt, updatedAt=$updatedAt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'links'] = links;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'name'] = name;
    if (description != null) {
      json[r'description'] = description;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt!.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt!.toUtc().toIso8601String();
    }
    if (status != null) {
      json[r'status'] = status;
    }
    return json;
  }

  /// Returns a new [Organization] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Organization fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Organization(
      links: json[r'links'] == null
          ? null
          : OrganizationLinks.fromJson(json[r'links']),
      id: mapValueOfType<String>(json, r'id'),
      name: mapValueOfType<String>(json, r'name'),
      description: mapValueOfType<String>(json, r'description'),
      createdAt: mapDateTime(json, r'createdAt', ''),
      updatedAt: mapDateTime(json, r'updatedAt', ''),
      status: OrganizationStatusEnum.fromJson(json[r'status']),
    );
  }

  static List<Organization>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Organization.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Organization>[];

  static Map<String, Organization?> mapFromJson(dynamic json) {
    final map = <String, Organization?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = Organization.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Organization-objects as value to a dart map
  static Map<String, List<Organization?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Organization?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Organization.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

/// If inactive the organization is inactive.
class OrganizationStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const OrganizationStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = OrganizationStatusEnum._(r'active');
  static const inactive = OrganizationStatusEnum._(r'inactive');

  /// List of all possible values in this [enum][OrganizationStatusEnum].
  static const values = <OrganizationStatusEnum>[
    active,
    inactive,
  ];

  static OrganizationStatusEnum? fromJson(dynamic value) =>
      OrganizationStatusEnumTypeTransformer().decode(value);

  static List<OrganizationStatusEnum?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(OrganizationStatusEnum.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <OrganizationStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [OrganizationStatusEnum] to String,
/// and [decode] dynamic data back to [OrganizationStatusEnum].
class OrganizationStatusEnumTypeTransformer {
  factory OrganizationStatusEnumTypeTransformer() =>
      _instance ??= const OrganizationStatusEnumTypeTransformer._();

  const OrganizationStatusEnumTypeTransformer._();

  String encode(OrganizationStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrganizationStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrganizationStatusEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'active':
          return OrganizationStatusEnum.active;
        case r'inactive':
          return OrganizationStatusEnum.inactive;
        default:
          return OrganizationStatusEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [OrganizationStatusEnumTypeTransformer] instance.
  static OrganizationStatusEnumTypeTransformer? _instance;
}
