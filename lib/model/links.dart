//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Links {
  /// Returns a new [Links] instance.
  Links({
    this.next,
    @required this.self,
    this.prev,
  });

  /// URI of resource.
  String next;

  /// URI of resource.
  String self;

  /// URI of resource.
  String prev;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Links &&
     other.next == next &&
     other.self == self &&
     other.prev == prev;

  @override
  int get hashCode =>
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
    if (self != null) {
      json[r'self'] = self;
    }
    if (prev != null) {
      json[r'prev'] = prev;
    }
    return json;
  }

  /// Returns a new [Links] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Links fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Links(
        next: json[r'next'],
        self: json[r'self'],
        prev: json[r'prev'],
    );

  static List<Links> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Links>[]
      : json.map((v) => Links.fromJson(v)).toList(growable: true == growable);

  static Map<String, Links> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Links>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Links.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Links-objects as value to a dart map
  static Map<String, List<Links>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Links>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Links.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

