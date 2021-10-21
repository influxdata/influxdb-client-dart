//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Runs {
  /// Returns a new [Runs] instance.
  Runs({
    this.links,
    this.runs = const [],
  });

  Links? links;

  List<Run?>? runs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Runs &&
     other.links == links &&
     other.runs == runs;

  @override
  int get hashCode =>
    (links == null ? 0 : links.hashCode) +
    (runs == null ? 0 : runs.hashCode);

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

  /// Returns a new [Runs] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Runs? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : Runs(
        links: Links.fromJson(json[r'links']),
        runs: Run.listFromJson(json[r'runs']),
    );

  static List<Runs?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <Runs>[]
      : json.map((dynamic value) => Runs.fromJson(value)).toList(growable: true == growable);

  static Map<String, Runs?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Runs?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Runs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Runs-objects as value to a dart map
  static Map<String, List<Runs?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<Runs?>?> map = <String, List<Runs>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Runs.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

