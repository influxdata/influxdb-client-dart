//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Authorizations {
  /// Returns a new [Authorizations] instance.
  Authorizations({
    this.links,
    this.authorizations = const [],
  });

  Links? links;

  List<Authorization?>? authorizations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Authorizations &&
     other.links == links &&
     other.authorizations == authorizations;

  @override
  int get hashCode =>
    (links == null ? 0 : links.hashCode) +
    (authorizations == null ? 0 : authorizations.hashCode);

  @override
  String toString() => 'Authorizations[links=$links, authorizations=$authorizations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'links'] = links;
    }
    if (authorizations != null) {
      json[r'authorizations'] = authorizations;
    }
    return json;
  }

  /// Returns a new [Authorizations] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Authorizations? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : Authorizations(
        links: Links.fromJson(json[r'links']),
        authorizations: Authorization.listFromJson(json[r'authorizations']),
    );

  static List<Authorizations?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <Authorizations>[]
      : json.map((dynamic value) => Authorizations.fromJson(value)).toList(growable: true == growable);

  static Map<String, Authorizations?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Authorizations?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Authorizations.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Authorizations-objects as value to a dart map
  static Map<String, List<Authorizations?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<Authorizations?>?> map = <String, List<Authorizations>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Authorizations.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

