//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ResourceMembers {
  /// Returns a new [ResourceMembers] instance.
  ResourceMembers({
    this.links,
    this.users = const [],
  });

  ResourceMembersLinks? links;

  List<ResourceMember>? users;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourceMembers && other.links == links && other.users == users;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (links == null ? 0 : links.hashCode) +
      (users == null ? 0 : users.hashCode);

  @override
  String toString() => 'ResourceMembers[links=$links, users=$users]';

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

  /// Returns a new [ResourceMembers] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static ResourceMembers fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return ResourceMembers(
      links: json[r'links'] == null
          ? null
          : ResourceMembersLinks.fromJson(json[r'links']),
      users: ResourceMember.listFromJson(json[r'users']),
    );
  }

  static List<ResourceMembers>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ResourceMembers.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ResourceMembers>[];

  static Map<String, ResourceMembers?> mapFromJson(dynamic json) {
    final map = <String, ResourceMembers?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = ResourceMembers.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceMembers-objects as value to a dart map
  static Map<String, List<ResourceMembers?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<ResourceMembers?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = ResourceMembers.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
