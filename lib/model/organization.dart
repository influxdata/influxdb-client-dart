//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  bool operator ==(Object other) => identical(this, other) || other is Organization &&
     other.links == links &&
     other.id == id &&
     other.name == name &&
     other.description == description &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.status == status;

  @override
  int get hashCode =>
    (links == null ? 0 : links.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (status == null ? 0 : status.hashCode);

  @override
  String toString() => 'Organization[links=$links, id=$id, name=$name, description=$description, createdAt=$createdAt, updatedAt=$updatedAt, status=$status]';

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

  /// Returns a new [Organization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Organization? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : Organization(
        links: OrganizationLinks.fromJson(json[r'links']),
        id: json[r'id'],
        name: json[r'name'],
        description: json[r'description'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        status: OrganizationStatusEnum.fromJson(json[r'status']),
    );

  static List<Organization?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <Organization>[]
      : json.map((dynamic value) => Organization.fromJson(value)).toList(growable: true == growable);

  static Map<String, Organization?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Organization?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Organization.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Organization-objects as value to a dart map
  static Map<String, List<Organization?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<Organization?>?> map = <String, List<Organization>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Organization.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
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

  static List<OrganizationStatusEnum?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <OrganizationStatusEnum>[]
      : json
          .map((value) => OrganizationStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrganizationStatusEnum] to String,
/// and [decode] dynamic data back to [OrganizationStatusEnum].
class OrganizationStatusEnumTypeTransformer {
  const OrganizationStatusEnumTypeTransformer._();

  factory OrganizationStatusEnumTypeTransformer() => _instance ??= OrganizationStatusEnumTypeTransformer._();

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
    switch (data) {
      case r'active': return OrganizationStatusEnum.active;
      case r'inactive': return OrganizationStatusEnum.inactive;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrganizationStatusEnumTypeTransformer] instance.
  static OrganizationStatusEnumTypeTransformer? _instance;
}

