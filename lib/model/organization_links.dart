//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class OrganizationLinks {
  /// Returns a new [OrganizationLinks] instance.
  OrganizationLinks({
    this.self,
    this.members,
    this.owners,
    this.labels,
    this.secrets,
    this.buckets,
    this.tasks,
    this.dashboards,
  });

  /// URI of resource.
  String? self;

  /// URI of resource.
  String? members;

  /// URI of resource.
  String? owners;

  /// URI of resource.
  String? labels;

  /// URI of resource.
  String? secrets;

  /// URI of resource.
  String? buckets;

  /// URI of resource.
  String? tasks;

  /// URI of resource.
  String? dashboards;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationLinks &&
     other.self == self &&
     other.members == members &&
     other.owners == owners &&
     other.labels == labels &&
     other.secrets == secrets &&
     other.buckets == buckets &&
     other.tasks == tasks &&
     other.dashboards == dashboards;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (self == null ? 0 : self.hashCode) +
    (members == null ? 0 : members.hashCode) +
    (owners == null ? 0 : owners.hashCode) +
    (labels == null ? 0 : labels.hashCode) +
    (secrets == null ? 0 : secrets.hashCode) +
    (buckets == null ? 0 : buckets.hashCode) +
    (tasks == null ? 0 : tasks.hashCode) +
    (dashboards == null ? 0 : dashboards.hashCode);

  @override
  String toString() => 'OrganizationLinks[self=$self, members=$members, owners=$owners, labels=$labels, secrets=$secrets, buckets=$buckets, tasks=$tasks, dashboards=$dashboards]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (members != null) {
      json[r'members'] = members;
    }
    if (owners != null) {
      json[r'owners'] = owners;
    }
    if (labels != null) {
      json[r'labels'] = labels;
    }
    if (secrets != null) {
      json[r'secrets'] = secrets;
    }
    if (buckets != null) {
      json[r'buckets'] = buckets;
    }
    if (tasks != null) {
      json[r'tasks'] = tasks;
    }
    if (dashboards != null) {
      json[r'dashboards'] = dashboards;
    }
    return json;
  }

  /// Returns a new [OrganizationLinks] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static OrganizationLinks fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return OrganizationLinks(
        self: mapValueOfType<String>(json, r'self'),
        members: mapValueOfType<String>(json, r'members'),
        owners: mapValueOfType<String>(json, r'owners'),
        labels: mapValueOfType<String>(json, r'labels'),
        secrets: mapValueOfType<String>(json, r'secrets'),
        buckets: mapValueOfType<String>(json, r'buckets'),
        tasks: mapValueOfType<String>(json, r'tasks'),
        dashboards: mapValueOfType<String>(json, r'dashboards'),
      );
  }

  static List<OrganizationLinks>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrganizationLinks.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrganizationLinks>[];

  static Map<String, OrganizationLinks?> mapFromJson(dynamic json) {
    final map = <String, OrganizationLinks?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrganizationLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationLinks-objects as value to a dart map
  static Map<String, List<OrganizationLinks?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<OrganizationLinks?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrganizationLinks.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

