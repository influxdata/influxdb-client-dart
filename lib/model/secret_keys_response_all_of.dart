//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  // ignore: unnecessary_parenthesis
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

  /// Returns a new [SecretKeysResponseAllOf] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static SecretKeysResponseAllOf fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return SecretKeysResponseAllOf(
        links: json[r'links'] == null ? null : SecretKeysResponseAllOfLinks.fromJson(json[r'links']),
      );
  }

  static List<SecretKeysResponseAllOf>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SecretKeysResponseAllOf.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SecretKeysResponseAllOf>[];

  static Map<String, SecretKeysResponseAllOf?> mapFromJson(dynamic json) {
    final map = <String, SecretKeysResponseAllOf?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SecretKeysResponseAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SecretKeysResponseAllOf-objects as value to a dart map
  static Map<String, List<SecretKeysResponseAllOf?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<SecretKeysResponseAllOf?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SecretKeysResponseAllOf.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

