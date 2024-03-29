//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Resource &&
          other.type == type &&
          other.id == id &&
          other.name == name &&
          other.orgID == orgID &&
          other.org == org;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (orgID == null ? 0 : orgID.hashCode) +
      (org == null ? 0 : org.hashCode);

  @override
  String toString() =>
      'Resource[type=$type, id=$id, name=$name, orgID=$orgID, org=$org]';

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

  /// Returns a new [Resource] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Resource fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Resource(
      type: ResourceTypeEnum.fromJson(json[r'type']),
      id: mapValueOfType<String>(json, r'id'),
      name: mapValueOfType<String>(json, r'name'),
      orgID: mapValueOfType<String>(json, r'orgID'),
      org: mapValueOfType<String>(json, r'org'),
    );
  }

  static List<Resource>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Resource.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Resource>[];

  static Map<String, Resource?> mapFromJson(dynamic json) {
    final map = <String, Resource?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Resource.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Resource-objects as value to a dart map
  static Map<String, List<Resource?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Resource?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Resource.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
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
  static const notificationEndpoints =
      ResourceTypeEnum._(r'notificationEndpoints');
  static const checks = ResourceTypeEnum._(r'checks');
  static const dbrp = ResourceTypeEnum._(r'dbrp');
  static const notebooks = ResourceTypeEnum._(r'notebooks');
  static const annotations = ResourceTypeEnum._(r'annotations');
  static const remotes = ResourceTypeEnum._(r'remotes');
  static const replications = ResourceTypeEnum._(r'replications');
  static const flows = ResourceTypeEnum._(r'flows');
  static const functions = ResourceTypeEnum._(r'functions');

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
    annotations,
    remotes,
    replications,
    flows,
    functions,
  ];

  static ResourceTypeEnum? fromJson(dynamic value) =>
      ResourceTypeEnumTypeTransformer().decode(value);

  static List<ResourceTypeEnum?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ResourceTypeEnum.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ResourceTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [ResourceTypeEnum] to String,
/// and [decode] dynamic data back to [ResourceTypeEnum].
class ResourceTypeEnumTypeTransformer {
  factory ResourceTypeEnumTypeTransformer() =>
      _instance ??= const ResourceTypeEnumTypeTransformer._();

  const ResourceTypeEnumTypeTransformer._();

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
    if (data != null) {
      switch (data.toString()) {
        case r'authorizations':
          return ResourceTypeEnum.authorizations;
        case r'buckets':
          return ResourceTypeEnum.buckets;
        case r'dashboards':
          return ResourceTypeEnum.dashboards;
        case r'orgs':
          return ResourceTypeEnum.orgs;
        case r'sources':
          return ResourceTypeEnum.sources;
        case r'tasks':
          return ResourceTypeEnum.tasks;
        case r'telegrafs':
          return ResourceTypeEnum.telegrafs;
        case r'users':
          return ResourceTypeEnum.users;
        case r'variables':
          return ResourceTypeEnum.variables;
        case r'scrapers':
          return ResourceTypeEnum.scrapers;
        case r'secrets':
          return ResourceTypeEnum.secrets;
        case r'labels':
          return ResourceTypeEnum.labels;
        case r'views':
          return ResourceTypeEnum.views;
        case r'documents':
          return ResourceTypeEnum.documents;
        case r'notificationRules':
          return ResourceTypeEnum.notificationRules;
        case r'notificationEndpoints':
          return ResourceTypeEnum.notificationEndpoints;
        case r'checks':
          return ResourceTypeEnum.checks;
        case r'dbrp':
          return ResourceTypeEnum.dbrp;
        case r'notebooks':
          return ResourceTypeEnum.notebooks;
        case r'annotations':
          return ResourceTypeEnum.annotations;
        case r'remotes':
          return ResourceTypeEnum.remotes;
        case r'replications':
          return ResourceTypeEnum.replications;
        case r'flows':
          return ResourceTypeEnum.flows;
        case r'functions':
          return ResourceTypeEnum.functions;
        default:
          return ResourceTypeEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [ResourceTypeEnumTypeTransformer] instance.
  static ResourceTypeEnumTypeTransformer? _instance;
}
