//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class AddResourceMemberRequestBody {
  /// Returns a new [AddResourceMemberRequestBody] instance.
  AddResourceMemberRequestBody({
    @required this.id,
    this.name,
  });

  String id;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddResourceMemberRequestBody &&
     other.id == id &&
     other.name == name;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'AddResourceMemberRequestBody[id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [AddResourceMemberRequestBody] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AddResourceMemberRequestBody fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AddResourceMemberRequestBody(
        id: json[r'id'],
        name: json[r'name'],
    );

  static List<AddResourceMemberRequestBody> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AddResourceMemberRequestBody>[]
      : json.map((v) => AddResourceMemberRequestBody.fromJson(v)).toList(growable: true == growable);

  static Map<String, AddResourceMemberRequestBody> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AddResourceMemberRequestBody>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AddResourceMemberRequestBody.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AddResourceMemberRequestBody-objects as value to a dart map
  static Map<String, List<AddResourceMemberRequestBody>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AddResourceMemberRequestBody>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AddResourceMemberRequestBody.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

