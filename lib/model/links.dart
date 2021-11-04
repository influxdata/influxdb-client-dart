//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Links {
  /// Returns a new [Links] instance.
  Links({
    this.next,
    required this.self,
    this.prev,
  });

  /// URI of resource.
  String? next;

  /// URI of resource.
  String? self;

  /// URI of resource.
  String? prev;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Links &&
          other.next == next &&
          other.self == self &&
          other.prev == prev;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (next == null ? 0 : next.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (prev == null ? 0 : prev.hashCode);

  @override
  String toString() => 'Links[next=$next, self=$self, prev=$prev]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (next != null) {
      json[r'next'] = next;
    }
    json[r'self'] = self;
    if (prev != null) {
      json[r'prev'] = prev;
    }
    return json;
  }

  /// Returns a new [Links] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Links fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Links(
      next: mapValueOfType<String>(json, r'next'),
      self: mapValueOfType<String>(json, r'self'),
      prev: mapValueOfType<String>(json, r'prev'),
    );
  }

  static List<Links>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Links.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Links>[];

  static Map<String, Links?> mapFromJson(dynamic json) {
    final map = <String, Links?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Links.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Links-objects as value to a dart map
  static Map<String, List<Links?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Links?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Links.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
