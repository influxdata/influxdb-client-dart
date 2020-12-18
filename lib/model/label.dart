//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Label {
  /// Returns a new [Label] instance.
  Label({
    this.id,
    this.orgID,
    this.name,
    this.properties = const {},
  });

  String id;

  String orgID;

  String name;

  /// Key/Value pairs associated with this label. Keys can be removed by sending an update with an empty value.
  Map<String, String> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Label &&
     other.id == id &&
     other.orgID == orgID &&
     other.name == name &&
     other.properties == properties;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (orgID == null ? 0 : orgID.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'Label[id=$id, orgID=$orgID, name=$name, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (orgID != null) {
      json[r'orgID'] = orgID;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (properties != null) {
      json[r'properties'] = properties;
    }
    return json;
  }

  /// Returns a new [Label] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Label fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Label(
        id: json[r'id'],
        orgID: json[r'orgID'],
        name: json[r'name'],
        properties: json[r'properties'] == null ?
          null :
          (json[r'properties'] as Map).cast<String, String>(),
    );

  static List<Label> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Label>[]
      : json.map((v) => Label.fromJson(v)).toList(growable: true == growable);

  static Map<String, Label> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Label>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Label.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Label-objects as value to a dart map
  static Map<String, List<Label>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Label>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Label.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

