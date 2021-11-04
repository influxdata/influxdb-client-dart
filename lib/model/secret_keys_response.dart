//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SecretKeysResponse &&
          other.secrets == secrets &&
          other.links == links;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
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

  /// Returns a new [SecretKeysResponse] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static SecretKeysResponse fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return SecretKeysResponse(
      secrets: json[r'secrets'] is List
          ? (json[r'secrets'] as List).cast<String>()
          : null,
      links: json[r'links'] == null
          ? null
          : SecretKeysResponseAllOfLinks.fromJson(json[r'links']),
    );
  }

  static List<SecretKeysResponse>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(SecretKeysResponse.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <SecretKeysResponse>[];

  static Map<String, SecretKeysResponse?> mapFromJson(dynamic json) {
    final map = <String, SecretKeysResponse?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = SecretKeysResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SecretKeysResponse-objects as value to a dart map
  static Map<String, List<SecretKeysResponse?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<SecretKeysResponse?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = SecretKeysResponse.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
