//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Users {
  /// Returns a new [Users] instance.
  Users({
    this.links,
    this.users = const [],
  });

  ResourceMembersLinks? links;

  List<UserResponse>? users;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Users && other.links == links && other.users == users;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
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

  /// Returns a new [Users] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Users fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Users(
      links: json[r'links'] == null
          ? null
          : ResourceMembersLinks.fromJson(json[r'links']),
      users: UserResponse.listFromJson(json[r'users']),
    );
  }

  static List<Users>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Users.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Users>[];

  static Map<String, Users?> mapFromJson(dynamic json) {
    final map = <String, Users?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Users.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Users-objects as value to a dart map
  static Map<String, List<Users?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Users?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Users.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
