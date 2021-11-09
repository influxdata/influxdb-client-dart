//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  String? labels;

  /// URI of resource.
  String? members;

  /// URI of resource.
  String? org;

  /// URI of resource.
  String? owners;

  /// URI of resource.
  String? self;

  /// URI of resource.
  String? write;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BucketLinks &&
          other.labels == labels &&
          other.members == members &&
          other.org == org &&
          other.owners == owners &&
          other.self == self &&
          other.write == write;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (labels == null ? 0 : labels.hashCode) +
      (members == null ? 0 : members.hashCode) +
      (org == null ? 0 : org.hashCode) +
      (owners == null ? 0 : owners.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (write == null ? 0 : write.hashCode);

  @override
  String toString() =>
      'BucketLinks[labels=$labels, members=$members, org=$org, owners=$owners, self=$self, write=$write]';

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

  /// Returns a new [BucketLinks] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static BucketLinks fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return BucketLinks(
      labels: mapValueOfType<String>(json, r'labels'),
      members: mapValueOfType<String>(json, r'members'),
      org: mapValueOfType<String>(json, r'org'),
      owners: mapValueOfType<String>(json, r'owners'),
      self: mapValueOfType<String>(json, r'self'),
      write: mapValueOfType<String>(json, r'write'),
    );
  }

  static List<BucketLinks>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(BucketLinks.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <BucketLinks>[];

  static Map<String, BucketLinks?> mapFromJson(dynamic json) {
    final map = <String, BucketLinks?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = BucketLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BucketLinks-objects as value to a dart map
  static Map<String, List<BucketLinks?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<BucketLinks?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = BucketLinks.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
