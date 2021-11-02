//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class AddResourceMemberRequestBody {
  /// Returns a new [AddResourceMemberRequestBody] instance.
  AddResourceMemberRequestBody({
    required this.id,
    this.name,
  });

  String? id;

  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddResourceMemberRequestBody &&
     other.id == id &&
     other.name == name;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'AddResourceMemberRequestBody[id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [AddResourceMemberRequestBody] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static AddResourceMemberRequestBody fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return AddResourceMemberRequestBody(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
      );
  }

  static List<AddResourceMemberRequestBody>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AddResourceMemberRequestBody.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AddResourceMemberRequestBody>[];

  static Map<String, AddResourceMemberRequestBody?> mapFromJson(dynamic json) {
    final map = <String, AddResourceMemberRequestBody?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AddResourceMemberRequestBody.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddResourceMemberRequestBody-objects as value to a dart map
  static Map<String, List<AddResourceMemberRequestBody?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<AddResourceMemberRequestBody?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AddResourceMemberRequestBody.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

