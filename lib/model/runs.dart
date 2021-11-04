//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Runs {
  /// Returns a new [Runs] instance.
  Runs({
    this.links,
    this.runs = const [],
  });

  Links? links;

  List<Run>? runs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Runs && other.links == links && other.runs == runs;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (links == null ? 0 : links.hashCode) + (runs == null ? 0 : runs.hashCode);

  @override
  String toString() => 'Runs[links=$links, runs=$runs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'links'] = links;
    }
    if (runs != null) {
      json[r'runs'] = runs;
    }
    return json;
  }

  /// Returns a new [Runs] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Runs fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Runs(
      links: json[r'links'] == null ? null : Links.fromJson(json[r'links']),
      runs: Run.listFromJson(json[r'runs']),
    );
  }

  static List<Runs>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Runs.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Runs>[];

  static Map<String, Runs?> mapFromJson(dynamic json) {
    final map = <String, Runs?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Runs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Runs-objects as value to a dart map
  static Map<String, List<Runs?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Runs?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Runs.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
