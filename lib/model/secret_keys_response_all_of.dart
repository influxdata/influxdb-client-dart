//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class SecretKeysResponseAllOf {
  /// Returns a new [SecretKeysResponseAllOf] instance.
  SecretKeysResponseAllOf({
    this.links,
  });

  SecretKeysResponseAllOfLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecretKeysResponseAllOf &&
     other.links == links;

  @override
  int get hashCode =>
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'SecretKeysResponseAllOf[links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [SecretKeysResponseAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SecretKeysResponseAllOf? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : SecretKeysResponseAllOf(
        links: SecretKeysResponseAllOfLinks.fromJson(json[r'links']),
    );

  static List<SecretKeysResponseAllOf?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <SecretKeysResponseAllOf>[]
      : json.map((dynamic value) => SecretKeysResponseAllOf.fromJson(value)).toList(growable: true == growable);

  static Map<String, SecretKeysResponseAllOf?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SecretKeysResponseAllOf?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = SecretKeysResponseAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SecretKeysResponseAllOf-objects as value to a dart map
  static Map<String, List<SecretKeysResponseAllOf?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<SecretKeysResponseAllOf?>?> map = <String, List<SecretKeysResponseAllOf>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = SecretKeysResponseAllOf.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

