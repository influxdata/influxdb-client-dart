//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Organizations {
  /// Returns a new [Organizations] instance.
  Organizations({
    this.links,
    this.orgs = const [],
  });

  Links? links;

  List<Organization>? orgs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Organizations &&
     other.links == links &&
     other.orgs == orgs;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (links == null ? 0 : links.hashCode) +
    (orgs == null ? 0 : orgs.hashCode);

  @override
  String toString() => 'Organizations[links=$links, orgs=$orgs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'links'] = links;
    }
    if (orgs != null) {
      json[r'orgs'] = orgs;
    }
    return json;
  }

  /// Returns a new [Organizations] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Organizations fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return Organizations(
        links: json[r'links'] == null ? null : Links.fromJson(json[r'links']),
        orgs: Organization.listFromJson(json[r'orgs']),
      );
  }

  static List<Organizations>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Organizations.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Organizations>[];

  static Map<String, Organizations?> mapFromJson(dynamic json) {
    final map = <String, Organizations?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Organizations.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Organizations-objects as value to a dart map
  static Map<String, List<Organizations?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<Organizations?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Organizations.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

