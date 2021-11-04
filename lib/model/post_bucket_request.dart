//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  List<RetentionRule>? retentionRules;

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
  // ignore: unnecessary_parenthesis
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

  /// Returns a new [PostBucketRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static PostBucketRequest fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return PostBucketRequest(
        orgID: mapValueOfType<String>(json, r'orgID'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        rp: mapValueOfType<String>(json, r'rp'),
        retentionRules: RetentionRule.listFromJson(json[r'retentionRules']),
        schemaType: json[r'schemaType'] == null ? null : SchemaType.fromJson(json[r'schemaType']),
      );
  }

  static List<PostBucketRequest>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PostBucketRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PostBucketRequest>[];

  static Map<String, PostBucketRequest?> mapFromJson(dynamic json) {
    final map = <String, PostBucketRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PostBucketRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PostBucketRequest-objects as value to a dart map
  static Map<String, List<PostBucketRequest?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<PostBucketRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PostBucketRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

