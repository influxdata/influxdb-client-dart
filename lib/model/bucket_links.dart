//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class BucketLinks {
  /// Returns a new [BucketLinks] instance.
  BucketLinks({
    this.labels,
    this.members,
    this.org,
    this.owners,
    this.self,
    this.write,
  });

  /// URI of resource.
  String labels;

  /// URI of resource.
  String members;

  /// URI of resource.
  String org;

  /// URI of resource.
  String owners;

  /// URI of resource.
  String self;

  /// URI of resource.
  String write;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BucketLinks &&
     other.labels == labels &&
     other.members == members &&
     other.org == org &&
     other.owners == owners &&
     other.self == self &&
     other.write == write;

  @override
  int get hashCode =>
    (labels == null ? 0 : labels.hashCode) +
    (members == null ? 0 : members.hashCode) +
    (org == null ? 0 : org.hashCode) +
    (owners == null ? 0 : owners.hashCode) +
    (self == null ? 0 : self.hashCode) +
    (write == null ? 0 : write.hashCode);

  @override
  String toString() => 'BucketLinks[labels=$labels, members=$members, org=$org, owners=$owners, self=$self, write=$write]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (labels != null) {
      json[r'labels'] = labels;
    }
    if (members != null) {
      json[r'members'] = members;
    }
    if (org != null) {
      json[r'org'] = org;
    }
    if (owners != null) {
      json[r'owners'] = owners;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (write != null) {
      json[r'write'] = write;
    }
    return json;
  }

  /// Returns a new [BucketLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BucketLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BucketLinks(
        labels: json[r'labels'],
        members: json[r'members'],
        org: json[r'org'],
        owners: json[r'owners'],
        self: json[r'self'],
        write: json[r'write'],
    );

  static List<BucketLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BucketLinks>[]
      : json.map((v) => BucketLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, BucketLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BucketLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BucketLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BucketLinks-objects as value to a dart map
  static Map<String, List<BucketLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BucketLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BucketLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

