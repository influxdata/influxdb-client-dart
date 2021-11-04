//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ResourceMembersLinks {
  /// Returns a new [ResourceMembersLinks] instance.
  ResourceMembersLinks({
    this.self,
  });

  String? self;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourceMembersLinks && other.self == self;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
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

  /// Returns a new [ResourceMembersLinks] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static ResourceMembersLinks fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return ResourceMembersLinks(
      self: mapValueOfType<String>(json, r'self'),
    );
  }

  static List<ResourceMembersLinks>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ResourceMembersLinks.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ResourceMembersLinks>[];

  static Map<String, ResourceMembersLinks?> mapFromJson(dynamic json) {
    final map = <String, ResourceMembersLinks?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = ResourceMembersLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResourceMembersLinks-objects as value to a dart map
  static Map<String, List<ResourceMembersLinks?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<ResourceMembersLinks?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = ResourceMembersLinks.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
