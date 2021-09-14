//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  String self;

  /// URI of resource.
  String members;

  /// URI of resource.
  String owners;

  /// URI of resource.
  String labels;

  /// URI of resource.
  String secrets;

  /// URI of resource.
  String buckets;

  /// URI of resource.
  String tasks;

  /// URI of resource.
  String dashboards;

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

  /// Returns a new [OrganizationLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrganizationLinks(
        self: json[r'self'],
        members: json[r'members'],
        owners: json[r'owners'],
        labels: json[r'labels'],
        secrets: json[r'secrets'],
        buckets: json[r'buckets'],
        tasks: json[r'tasks'],
        dashboards: json[r'dashboards'],
    );

  static List<OrganizationLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrganizationLinks>[]
      : json.map((dynamic value) => OrganizationLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, OrganizationLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrganizationLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = OrganizationLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationLinks-objects as value to a dart map
  static Map<String, List<OrganizationLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = OrganizationLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

