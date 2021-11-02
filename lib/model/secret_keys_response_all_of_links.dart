//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class SecretKeysResponseAllOfLinks {
  /// Returns a new [SecretKeysResponseAllOfLinks] instance.
  SecretKeysResponseAllOfLinks({
    this.self,
    this.org,
  });

  String? self;

  String? org;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecretKeysResponseAllOfLinks &&
     other.self == self &&
     other.org == org;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (self == null ? 0 : self.hashCode) +
    (org == null ? 0 : org.hashCode);

  @override
  String toString() => 'SecretKeysResponseAllOfLinks[self=$self, org=$org]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (org != null) {
      json[r'org'] = org;
    }
    return json;
  }

  /// Returns a new [SecretKeysResponseAllOfLinks] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static SecretKeysResponseAllOfLinks fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return SecretKeysResponseAllOfLinks(
        self: mapValueOfType<String>(json, r'self'),
        org: mapValueOfType<String>(json, r'org'),
      );
  }

  static List<SecretKeysResponseAllOfLinks>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SecretKeysResponseAllOfLinks.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SecretKeysResponseAllOfLinks>[];

  static Map<String, SecretKeysResponseAllOfLinks?> mapFromJson(dynamic json) {
    final map = <String, SecretKeysResponseAllOfLinks?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SecretKeysResponseAllOfLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SecretKeysResponseAllOfLinks-objects as value to a dart map
  static Map<String, List<SecretKeysResponseAllOfLinks?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<SecretKeysResponseAllOfLinks?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SecretKeysResponseAllOfLinks.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

