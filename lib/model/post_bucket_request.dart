//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PostBucketRequest {
  /// Returns a new [PostBucketRequest] instance.
  PostBucketRequest({
    required this.orgID,
    required this.name,
    this.description,
    this.rp,
    this.retentionRules = const [],
    this.schemaType,
  });

  String? orgID;

  String? name;

  String? description;

  String? rp;

  /// Rules to expire or retain data.  No rules means data never expires.
  List<RetentionRule?>? retentionRules;

  SchemaType? schemaType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostBucketRequest &&
     other.orgID == orgID &&
     other.name == name &&
     other.description == description &&
     other.rp == rp &&
     other.retentionRules == retentionRules &&
     other.schemaType == schemaType;

  @override
  int get hashCode =>
    (orgID == null ? 0 : orgID.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (rp == null ? 0 : rp.hashCode) +
    (retentionRules == null ? 0 : retentionRules.hashCode) +
    (schemaType == null ? 0 : schemaType.hashCode);

  @override
  String toString() => 'PostBucketRequest[orgID=$orgID, name=$name, description=$description, rp=$rp, retentionRules=$retentionRules, schemaType=$schemaType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'orgID'] = orgID;
      json[r'name'] = name;
    if (description != null) {
      json[r'description'] = description;
    }
    if (rp != null) {
      json[r'rp'] = rp;
    }
      json[r'retentionRules'] = retentionRules;
    if (schemaType != null) {
      json[r'schemaType'] = schemaType;
    }
    return json;
  }

  /// Returns a new [PostBucketRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostBucketRequest? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : PostBucketRequest(
        orgID: json[r'orgID'],
        name: json[r'name'],
        description: json[r'description'],
        rp: json[r'rp'],
        retentionRules: RetentionRule.listFromJson(json[r'retentionRules']),
        schemaType: SchemaType.fromJson(json[r'schemaType']),
    );

  static List<PostBucketRequest?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <PostBucketRequest>[]
      : json.map((dynamic value) => PostBucketRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, PostBucketRequest?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PostBucketRequest?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = PostBucketRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PostBucketRequest-objects as value to a dart map
  static Map<String, List<PostBucketRequest?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<PostBucketRequest?>?> map = <String, List<PostBucketRequest>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = PostBucketRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

