//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PatchOrganizationRequest {
  /// Returns a new [PatchOrganizationRequest] instance.
  PatchOrganizationRequest({
    this.name,
    this.description,
  });

  /// New name to set on the organization
  String? name;

  /// New description to set on the organization
  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchOrganizationRequest &&
     other.name == name &&
     other.description == description;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
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

  /// Returns a new [PatchOrganizationRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static PatchOrganizationRequest fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return PatchOrganizationRequest(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
      );
  }

  static List<PatchOrganizationRequest>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PatchOrganizationRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PatchOrganizationRequest>[];

  static Map<String, PatchOrganizationRequest?> mapFromJson(dynamic json) {
    final map = <String, PatchOrganizationRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PatchOrganizationRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PatchOrganizationRequest-objects as value to a dart map
  static Map<String, List<PatchOrganizationRequest?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<PatchOrganizationRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PatchOrganizationRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

