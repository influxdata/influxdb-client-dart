//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PostOrganizationRequest {
  /// Returns a new [PostOrganizationRequest] instance.
  PostOrganizationRequest({
    required this.name,
    this.description,
  });

  String? name;

  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostOrganizationRequest &&
     other.name == name &&
     other.description == description;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
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

  /// Returns a new [PostOrganizationRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static PostOrganizationRequest fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return PostOrganizationRequest(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
      );
  }

  static List<PostOrganizationRequest>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PostOrganizationRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PostOrganizationRequest>[];

  static Map<String, PostOrganizationRequest?> mapFromJson(dynamic json) {
    final map = <String, PostOrganizationRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PostOrganizationRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PostOrganizationRequest-objects as value to a dart map
  static Map<String, List<PostOrganizationRequest?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<PostOrganizationRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PostOrganizationRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

