//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ResourceMembers {
  /// Returns a new [ResourceMembers] instance.
  ResourceMembers({
    this.links,
    this.users = const [],
  });

  ResourceMembersLinks? links;

  List<ResourceMember?>? users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceMembers &&
     other.links == links &&
     other.users == users;

  @override
  int get hashCode =>
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

  /// Returns a new [ResourceMembers] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResourceMembers? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : ResourceMembers(
        links: ResourceMembersLinks.fromJson(json[r'links']),
        users: ResourceMember.listFromJson(json[r'users']),
    );

  static List<ResourceMembers?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <ResourceMembers>[]
      : json.map((dynamic value) => ResourceMembers.fromJson(value)).toList(growable: true == growable);

  static Map<String, ResourceMembers?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResourceMembers?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ResourceMembers.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceMembers-objects as value to a dart map
  static Map<String, List<ResourceMembers?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<ResourceMembers?>?> map = <String, List<ResourceMembers>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ResourceMembers.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

