//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Buckets {
  /// Returns a new [Buckets] instance.
  Buckets({
    this.links,
    this.buckets = const [],
  });

  Links links;

  List<Bucket> buckets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Buckets &&
     other.links == links &&
     other.buckets == buckets;

  @override
  int get hashCode =>
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

  /// Returns a new [Buckets] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Buckets fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Buckets(
        links: Links.fromJson(json[r'links']),
        buckets: Bucket.listFromJson(json[r'buckets']),
    );

  static List<Buckets> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Buckets>[]
      : json.map((dynamic value) => Buckets.fromJson(value)).toList(growable: true == growable);

  static Map<String, Buckets> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Buckets>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Buckets.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Buckets-objects as value to a dart map
  static Map<String, List<Buckets>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Buckets>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Buckets.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

