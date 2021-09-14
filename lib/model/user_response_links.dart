//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class UserResponseLinks {
  /// Returns a new [UserResponseLinks] instance.
  UserResponseLinks({
    this.self,
  });

  String self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserResponseLinks &&
     other.self == self;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode);

  @override
  String toString() => 'UserResponseLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  /// Returns a new [UserResponseLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserResponseLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserResponseLinks(
        self: json[r'self'],
    );

  static List<UserResponseLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserResponseLinks>[]
      : json.map((dynamic value) => UserResponseLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, UserResponseLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserResponseLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = UserResponseLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserResponseLinks-objects as value to a dart map
  static Map<String, List<UserResponseLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserResponseLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = UserResponseLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

