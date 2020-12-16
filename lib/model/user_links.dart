//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class UserLinks {
  /// Returns a new [UserLinks] instance.
  UserLinks({
    this.self,
  });

  String self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserLinks &&
     other.self == self;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode);

  @override
  String toString() => 'UserLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  /// Returns a new [UserLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserLinks(
        self: json[r'self'],
    );

  static List<UserLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserLinks>[]
      : json.map((v) => UserLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserLinks-objects as value to a dart map
  static Map<String, List<UserLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

