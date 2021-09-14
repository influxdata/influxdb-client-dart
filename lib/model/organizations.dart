//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Organizations {
  /// Returns a new [Organizations] instance.
  Organizations({
    this.links,
    this.orgs = const [],
  });

  Links links;

  List<Organization> orgs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Organizations &&
     other.links == links &&
     other.orgs == orgs;

  @override
  int get hashCode =>
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

  /// Returns a new [Organizations] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Organizations fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Organizations(
        links: Links.fromJson(json[r'links']),
        orgs: Organization.listFromJson(json[r'orgs']),
    );

  static List<Organizations> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Organizations>[]
      : json.map((dynamic value) => Organizations.fromJson(value)).toList(growable: true == growable);

  static Map<String, Organizations> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Organizations>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Organizations.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Organizations-objects as value to a dart map
  static Map<String, List<Organizations>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Organizations>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Organizations.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

