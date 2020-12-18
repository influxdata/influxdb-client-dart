//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class LabelsResponse {
  /// Returns a new [LabelsResponse] instance.
  LabelsResponse({
    this.labels = const [],
    this.links,
  });

  List<Label> labels;

  Links links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LabelsResponse &&
     other.labels == labels &&
     other.links == links;

  @override
  int get hashCode =>
    (labels == null ? 0 : labels.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'LabelsResponse[labels=$labels, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (labels != null) {
      json[r'labels'] = labels;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [LabelsResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static LabelsResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : LabelsResponse(
        labels: Label.listFromJson(json[r'labels']),
        links: Links.fromJson(json[r'links']),
    );

  static List<LabelsResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <LabelsResponse>[]
      : json.map((v) => LabelsResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, LabelsResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, LabelsResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = LabelsResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of LabelsResponse-objects as value to a dart map
  static Map<String, List<LabelsResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LabelsResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = LabelsResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

