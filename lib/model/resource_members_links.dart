//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ResourceMembersLinks {
  /// Returns a new [ResourceMembersLinks] instance.
  ResourceMembersLinks({
    this.self,
  });

  String self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceMembersLinks &&
     other.self == self;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode);

  @override
  String toString() => 'ResourceMembersLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  /// Returns a new [ResourceMembersLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResourceMembersLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResourceMembersLinks(
        self: json[r'self'],
    );

  static List<ResourceMembersLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResourceMembersLinks>[]
      : json.map((dynamic value) => ResourceMembersLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, ResourceMembersLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResourceMembersLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ResourceMembersLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceMembersLinks-objects as value to a dart map
  static Map<String, List<ResourceMembersLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResourceMembersLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ResourceMembersLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

