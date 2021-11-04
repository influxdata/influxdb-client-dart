//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class LabelCreateRequest {
  /// Returns a new [LabelCreateRequest] instance.
  LabelCreateRequest({
    required this.orgID,
    required this.name,
    this.properties = const {},
  });

  String? orgID;

  String? name;

  /// Key/Value pairs associated with this label. Keys can be removed by sending an update with an empty value.
  Map<String, String>? properties;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LabelCreateRequest &&
          other.orgID == orgID &&
          other.name == name &&
          other.properties == properties;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (orgID == null ? 0 : orgID.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (properties == null ? 0 : properties.hashCode);

  @override
  String toString() =>
      'LabelCreateRequest[orgID=$orgID, name=$name, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'orgID'] = orgID;
    json[r'name'] = name;
    if (properties != null) {
      json[r'properties'] = properties;
    }
    return json;
  }

  /// Returns a new [LabelCreateRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static LabelCreateRequest fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return LabelCreateRequest(
      orgID: mapValueOfType<String>(json, r'orgID'),
      name: mapValueOfType<String>(json, r'name'),
      properties: mapCastOfType<String, String>(json, r'properties'),
    );
  }

  static List<LabelCreateRequest>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(LabelCreateRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <LabelCreateRequest>[];

  static Map<String, LabelCreateRequest?> mapFromJson(dynamic json) {
    final map = <String, LabelCreateRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = LabelCreateRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LabelCreateRequest-objects as value to a dart map
  static Map<String, List<LabelCreateRequest?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<LabelCreateRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = LabelCreateRequest.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
