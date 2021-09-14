//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PatchOrganizationRequest {
  /// Returns a new [PatchOrganizationRequest] instance.
  PatchOrganizationRequest({
    this.name,
    this.description,
  });

  /// New name to set on the organization
  String name;

  /// New description to set on the organization
  String description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchOrganizationRequest &&
     other.name == name &&
     other.description == description;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode);

  @override
  String toString() => 'PatchOrganizationRequest[name=$name, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    return json;
  }

  /// Returns a new [PatchOrganizationRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PatchOrganizationRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PatchOrganizationRequest(
        name: json[r'name'],
        description: json[r'description'],
    );

  static List<PatchOrganizationRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PatchOrganizationRequest>[]
      : json.map((dynamic value) => PatchOrganizationRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, PatchOrganizationRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PatchOrganizationRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = PatchOrganizationRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PatchOrganizationRequest-objects as value to a dart map
  static Map<String, List<PatchOrganizationRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PatchOrganizationRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = PatchOrganizationRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

