//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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

  String? id;

  String? orgID;

  String? name;

  /// Key/Value pairs associated with this label. Keys can be removed by sending an update with an empty value.
  Map<String, String>? properties;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Label &&
          other.id == id &&
          other.orgID == orgID &&
          other.name == name &&
          other.properties == properties;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id.hashCode) +
      (orgID == null ? 0 : orgID.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (properties == null ? 0 : properties.hashCode);

  @override
  String toString() =>
      'Label[id=$id, orgID=$orgID, name=$name, properties=$properties]';

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

  /// Returns a new [Label] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Label fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Label(
      id: mapValueOfType<String>(json, r'id'),
      orgID: mapValueOfType<String>(json, r'orgID'),
      name: mapValueOfType<String>(json, r'name'),
      properties: mapCastOfType<String, String>(json, r'properties'),
    );
  }

  static List<Label>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Label.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Label>[];

  static Map<String, Label?> mapFromJson(dynamic json) {
    final map = <String, Label?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Label.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Label-objects as value to a dart map
  static Map<String, List<Label?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Label?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Label.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
