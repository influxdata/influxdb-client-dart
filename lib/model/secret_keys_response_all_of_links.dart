//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class SecretKeysResponseAllOfLinks {
  /// Returns a new [SecretKeysResponseAllOfLinks] instance.
  SecretKeysResponseAllOfLinks({
    this.self,
    this.org,
  });

  String self;

  String org;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecretKeysResponseAllOfLinks &&
     other.self == self &&
     other.org == org;

  @override
  int get hashCode =>
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

  /// Returns a new [SecretKeysResponseAllOfLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SecretKeysResponseAllOfLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SecretKeysResponseAllOfLinks(
        self: json[r'self'],
        org: json[r'org'],
    );

  static List<SecretKeysResponseAllOfLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SecretKeysResponseAllOfLinks>[]
      : json.map((dynamic value) => SecretKeysResponseAllOfLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, SecretKeysResponseAllOfLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SecretKeysResponseAllOfLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = SecretKeysResponseAllOfLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SecretKeysResponseAllOfLinks-objects as value to a dart map
  static Map<String, List<SecretKeysResponseAllOfLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SecretKeysResponseAllOfLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = SecretKeysResponseAllOfLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

