//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ResourceOwners {
  /// Returns a new [ResourceOwners] instance.
  ResourceOwners({
    this.links,
    this.users = const [],
  });

  ResourceMembersLinks? links;

  List<ResourceOwner>? users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceOwners &&
     other.links == links &&
     other.users == users;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (links == null ? 0 : links.hashCode) +
    (users == null ? 0 : users.hashCode);

  @override
  String toString() => 'ResourceOwners[links=$links, users=$users]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'links'] = links;
    }
    if (users != null) {
      json[r'users'] = users;
    }
    return json;
  }

  /// Returns a new [ResourceOwners] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static ResourceOwners fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return ResourceOwners(
        links: json[r'links'] == null ? null : ResourceMembersLinks.fromJson(json[r'links']),
        users: ResourceOwner.listFromJson(json[r'users']),
      );
  }

  static List<ResourceOwners>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ResourceOwners.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ResourceOwners>[];

  static Map<String, ResourceOwners?> mapFromJson(dynamic json) {
    final map = <String, ResourceOwners?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ResourceOwners.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceOwners-objects as value to a dart map
  static Map<String, List<ResourceOwners?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<ResourceOwners?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ResourceOwners.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

