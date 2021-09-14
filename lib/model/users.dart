//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Users {
  /// Returns a new [Users] instance.
  Users({
    this.links,
    this.users = const [],
  });

  ResourceMembersLinks links;

  List<UserResponse> users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Users &&
     other.links == links &&
     other.users == users;

  @override
  int get hashCode =>
    (links == null ? 0 : links.hashCode) +
    (users == null ? 0 : users.hashCode);

  @override
  String toString() => 'Users[links=$links, users=$users]';

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

  /// Returns a new [Users] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Users fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Users(
        links: ResourceMembersLinks.fromJson(json[r'links']),
        users: UserResponse.listFromJson(json[r'users']),
    );

  static List<Users> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Users>[]
      : json.map((dynamic value) => Users.fromJson(value)).toList(growable: true == growable);

  static Map<String, Users> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Users>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Users.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Users-objects as value to a dart map
  static Map<String, List<Users>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Users>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Users.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

