//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Resource {
  /// Returns a new [Resource] instance.
  Resource({
    required this.type,
    this.id,
    this.name,
    this.orgID,
    this.org,
  });

  ResourceTypeEnum? type;

  /// If ID is set that is a permission for a specific resource. if it is not set it is a permission for all resources of that resource type.
  String? id;

  /// Optional name of the resource if the resource has a name field.
  String? name;

  /// If orgID is set that is a permission for all resources owned my that org. if it is not set it is a permission for all resources of that resource type.
  String? orgID;

  /// Optional name of the organization of the organization with orgID.
  String? org;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Resource &&
     other.type == type &&
     other.id == id &&
     other.name == name &&
     other.orgID == orgID &&
     other.org == org;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (orgID == null ? 0 : orgID.hashCode) +
    (org == null ? 0 : org.hashCode);

  @override
  String toString() => 'Resource[type=$type, id=$id, name=$name, orgID=$orgID, org=$org]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (orgID != null) {
      json[r'orgID'] = orgID;
    }
    if (org != null) {
      json[r'org'] = org;
    }
    return json;
  }

  /// Returns a new [Resource] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Resource? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : Resource(
        type: ResourceTypeEnum.fromJson(json[r'type']),
        id: json[r'id'],
        name: json[r'name'],
        orgID: json[r'orgID'],
        org: json[r'org'],
    );

  static List<Resource?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <Resource>[]
      : json.map((dynamic value) => Resource.fromJson(value)).toList(growable: true == growable);

  static Map<String, Resource?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Resource?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Resource.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Resource-objects as value to a dart map
  static Map<String, List<Resource?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<Resource?>?> map = <String, List<Resource>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Resource.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}


class ResourceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const authorizations = ResourceTypeEnum._(r'authorizations');
  static const buckets = ResourceTypeEnum._(r'buckets');
  static const dashboards = ResourceTypeEnum._(r'dashboards');
  static const orgs = ResourceTypeEnum._(r'orgs');
  static const sources = ResourceTypeEnum._(r'sources');
  static const tasks = ResourceTypeEnum._(r'tasks');
  static const telegrafs = ResourceTypeEnum._(r'telegrafs');
  static const users = ResourceTypeEnum._(r'users');
  static const variables = ResourceTypeEnum._(r'variables');
  static const scrapers = ResourceTypeEnum._(r'scrapers');
  static const secrets = ResourceTypeEnum._(r'secrets');
  static const labels = ResourceTypeEnum._(r'labels');
  static const views = ResourceTypeEnum._(r'views');
  static const documents = ResourceTypeEnum._(r'documents');
  static const notificationRules = ResourceTypeEnum._(r'notificationRules');
  static const notificationEndpoints = ResourceTypeEnum._(r'notificationEndpoints');
  static const checks = ResourceTypeEnum._(r'checks');
  static const dbrp = ResourceTypeEnum._(r'dbrp');
  static const notebooks = ResourceTypeEnum._(r'notebooks');

  /// List of all possible values in this [enum][ResourceTypeEnum].
  static const values = <ResourceTypeEnum>[
    authorizations,
    buckets,
    dashboards,
    orgs,
    sources,
    tasks,
    telegrafs,
    users,
    variables,
    scrapers,
    secrets,
    labels,
    views,
    documents,
    notificationRules,
    notificationEndpoints,
    checks,
    dbrp,
    notebooks,
  ];

  static ResourceTypeEnum? fromJson(dynamic value) =>
    ResourceTypeEnumTypeTransformer().decode(value);

  static List<ResourceTypeEnum?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <ResourceTypeEnum>[]
      : json
          .map((value) => ResourceTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ResourceTypeEnum] to String,
/// and [decode] dynamic data back to [ResourceTypeEnum].
class ResourceTypeEnumTypeTransformer {
  const ResourceTypeEnumTypeTransformer._();

  factory ResourceTypeEnumTypeTransformer() => _instance ??= ResourceTypeEnumTypeTransformer._();

  String encode(ResourceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceTypeEnum? decode(dynamic data, {bool? allowNull}) {
    switch (data) {
      case r'authorizations': return ResourceTypeEnum.authorizations;
      case r'buckets': return ResourceTypeEnum.buckets;
      case r'dashboards': return ResourceTypeEnum.dashboards;
      case r'orgs': return ResourceTypeEnum.orgs;
      case r'sources': return ResourceTypeEnum.sources;
      case r'tasks': return ResourceTypeEnum.tasks;
      case r'telegrafs': return ResourceTypeEnum.telegrafs;
      case r'users': return ResourceTypeEnum.users;
      case r'variables': return ResourceTypeEnum.variables;
      case r'scrapers': return ResourceTypeEnum.scrapers;
      case r'secrets': return ResourceTypeEnum.secrets;
      case r'labels': return ResourceTypeEnum.labels;
      case r'views': return ResourceTypeEnum.views;
      case r'documents': return ResourceTypeEnum.documents;
      case r'notificationRules': return ResourceTypeEnum.notificationRules;
      case r'notificationEndpoints': return ResourceTypeEnum.notificationEndpoints;
      case r'checks': return ResourceTypeEnum.checks;
      case r'dbrp': return ResourceTypeEnum.dbrp;
      case r'notebooks': return ResourceTypeEnum.notebooks;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ResourceTypeEnumTypeTransformer] instance.
  static ResourceTypeEnumTypeTransformer? _instance;
}

