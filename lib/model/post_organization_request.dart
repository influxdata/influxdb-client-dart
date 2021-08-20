//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PostOrganizationRequest {
  /// Returns a new [PostOrganizationRequest] instance.
  PostOrganizationRequest({
    @required this.name,
    this.description,
  });

  String name;

  String description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostOrganizationRequest &&
     other.name == name &&
     other.description == description;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode);

  @override
  String toString() => 'PostOrganizationRequest[name=$name, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
    if (description != null) {
      json[r'description'] = description;
    }
    return json;
  }

  /// Returns a new [PostOrganizationRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostOrganizationRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PostOrganizationRequest(
        name: json[r'name'],
        description: json[r'description'],
    );

  static List<PostOrganizationRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PostOrganizationRequest>[]
      : json.map((v) => PostOrganizationRequest.fromJson(v)).toList(growable: true == growable);

  static Map<String, PostOrganizationRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PostOrganizationRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PostOrganizationRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PostOrganizationRequest-objects as value to a dart map
  static Map<String, List<PostOrganizationRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PostOrganizationRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PostOrganizationRequest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
