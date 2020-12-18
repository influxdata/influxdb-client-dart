//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class LabelCreateRequest {
  /// Returns a new [LabelCreateRequest] instance.
  LabelCreateRequest({
    @required this.orgID,
    @required this.name,
    this.properties = const {},
  });

  String orgID;

  String name;

  /// Key/Value pairs associated with this label. Keys can be removed by sending an update with an empty value.
  Map<String, String> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LabelCreateRequest &&
     other.orgID == orgID &&
     other.name == name &&
     other.properties == properties;

  @override
  int get hashCode =>
    (orgID == null ? 0 : orgID.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'LabelCreateRequest[orgID=$orgID, name=$name, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [LabelCreateRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static LabelCreateRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : LabelCreateRequest(
        orgID: json[r'orgID'],
        name: json[r'name'],
        properties: json[r'properties'] == null ?
          null :
          (json[r'properties'] as Map).cast<String, String>(),
    );

  static List<LabelCreateRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <LabelCreateRequest>[]
      : json.map((v) => LabelCreateRequest.fromJson(v)).toList(growable: true == growable);

  static Map<String, LabelCreateRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, LabelCreateRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = LabelCreateRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of LabelCreateRequest-objects as value to a dart map
  static Map<String, List<LabelCreateRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LabelCreateRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = LabelCreateRequest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

