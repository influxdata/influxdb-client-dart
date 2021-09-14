//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ResourceOwners {
  /// Returns a new [ResourceOwners] instance.
  ResourceOwners({
    this.links,
    this.users = const [],
  });

  ResourceMembersLinks links;

  List<ResourceOwner> users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceOwners &&
     other.links == links &&
     other.users == users;

  @override
  int get hashCode =>
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

  /// Returns a new [ResourceOwners] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResourceOwners fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResourceOwners(
        links: ResourceMembersLinks.fromJson(json[r'links']),
        users: ResourceOwner.listFromJson(json[r'users']),
    );

  static List<ResourceOwners> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResourceOwners>[]
      : json.map((dynamic value) => ResourceOwners.fromJson(value)).toList(growable: true == growable);

  static Map<String, ResourceOwners> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResourceOwners>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ResourceOwners.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceOwners-objects as value to a dart map
  static Map<String, List<ResourceOwners>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResourceOwners>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ResourceOwners.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

