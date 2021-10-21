//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class LabelResponse {
  /// Returns a new [LabelResponse] instance.
  LabelResponse({
    this.label,
    this.links,
  });

  Label? label;

  Links? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LabelResponse &&
     other.label == label &&
     other.links == links;

  @override
  int get hashCode =>
    (label == null ? 0 : label.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'LabelResponse[label=$label, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (label != null) {
      json[r'label'] = label;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [LabelResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static LabelResponse? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : LabelResponse(
        label: Label.fromJson(json[r'label']),
        links: Links.fromJson(json[r'links']),
    );

  static List<LabelResponse?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <LabelResponse>[]
      : json.map((dynamic value) => LabelResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, LabelResponse?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, LabelResponse?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = LabelResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LabelResponse-objects as value to a dart map
  static Map<String, List<LabelResponse?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<LabelResponse?>?> map = <String, List<LabelResponse>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = LabelResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

