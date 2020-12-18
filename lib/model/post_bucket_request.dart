//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PostBucketRequest {
  /// Returns a new [PostBucketRequest] instance.
  PostBucketRequest({
    @required this.orgID,
    @required this.name,
    this.description,
    this.rp,
    this.retentionRules = const [],
  });

  String orgID;

  String name;

  String description;

  String rp;

  /// Rules to expire or retain data.  No rules means data never expires.
  List<RetentionRule> retentionRules;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostBucketRequest &&
     other.orgID == orgID &&
     other.name == name &&
     other.description == description &&
     other.rp == rp &&
     other.retentionRules == retentionRules;

  @override
  int get hashCode =>
    (orgID == null ? 0 : orgID.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (rp == null ? 0 : rp.hashCode) +
    (retentionRules == null ? 0 : retentionRules.hashCode);

  @override
  String toString() => 'PostBucketRequest[orgID=$orgID, name=$name, description=$description, rp=$rp, retentionRules=$retentionRules]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (orgID != null) {
      json[r'orgID'] = orgID;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (rp != null) {
      json[r'rp'] = rp;
    }
    if (retentionRules != null) {
      json[r'retentionRules'] = retentionRules;
    }
    return json;
  }

  /// Returns a new [PostBucketRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostBucketRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PostBucketRequest(
        orgID: json[r'orgID'],
        name: json[r'name'],
        description: json[r'description'],
        rp: json[r'rp'],
        retentionRules: RetentionRule.listFromJson(json[r'retentionRules']),
    );

  static List<PostBucketRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PostBucketRequest>[]
      : json.map((v) => PostBucketRequest.fromJson(v)).toList(growable: true == growable);

  static Map<String, PostBucketRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PostBucketRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PostBucketRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PostBucketRequest-objects as value to a dart map
  static Map<String, List<PostBucketRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PostBucketRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PostBucketRequest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

