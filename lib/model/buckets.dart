//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Buckets {
  /// Returns a new [Buckets] instance.
  Buckets({
    this.links,
    this.buckets = const [],
  });

  Links? links;

  List<Bucket>? buckets;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Buckets && other.links == links && other.buckets == buckets;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (links == null ? 0 : links.hashCode) +
      (buckets == null ? 0 : buckets.hashCode);

  @override
  String toString() => 'Buckets[links=$links, buckets=$buckets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'links'] = links;
    }
    if (buckets != null) {
      json[r'buckets'] = buckets;
    }
    return json;
  }

  /// Returns a new [Buckets] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Buckets fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Buckets(
      links: json[r'links'] == null ? null : Links.fromJson(json[r'links']),
      buckets: Bucket.listFromJson(json[r'buckets']),
    );
  }

  static List<Buckets>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Buckets.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Buckets>[];

  static Map<String, Buckets?> mapFromJson(dynamic json) {
    final map = <String, Buckets?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Buckets.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Buckets-objects as value to a dart map
  static Map<String, List<Buckets?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Buckets?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Buckets.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
