//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class UsersLinks {
  /// Returns a new [UsersLinks] instance.
  UsersLinks({
    this.self,
  });

  String self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsersLinks &&
     other.self == self;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode);

  @override
  String toString() => 'UsersLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  /// Returns a new [UsersLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UsersLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UsersLinks(
        self: json[r'self'],
    );

  static List<UsersLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UsersLinks>[]
      : json.map((v) => UsersLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, UsersLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UsersLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UsersLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UsersLinks-objects as value to a dart map
  static Map<String, List<UsersLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UsersLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UsersLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

