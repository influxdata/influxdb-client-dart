//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class SecretKeysResponse {
  /// Returns a new [SecretKeysResponse] instance.
  SecretKeysResponse({
    this.secrets = const [],
    this.links,
  });

  List<String>? secrets;

  SecretKeysResponseAllOfLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SecretKeysResponse &&
     other.secrets == secrets &&
     other.links == links;

  @override
  int get hashCode =>
    (secrets == null ? 0 : secrets.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'SecretKeysResponse[secrets=$secrets, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (secrets != null) {
      json[r'secrets'] = secrets;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [SecretKeysResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SecretKeysResponse? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : SecretKeysResponse(
        secrets: json[r'secrets'] == null
          ? null
          : (json[r'secrets'] as List).cast<String>(),
        links: SecretKeysResponseAllOfLinks.fromJson(json[r'links']),
    );

  static List<SecretKeysResponse?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <SecretKeysResponse>[]
      : json.map((dynamic value) => SecretKeysResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, SecretKeysResponse?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SecretKeysResponse?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = SecretKeysResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SecretKeysResponse-objects as value to a dart map
  static Map<String, List<SecretKeysResponse?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<SecretKeysResponse?>?> map = <String, List<SecretKeysResponse>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = SecretKeysResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

