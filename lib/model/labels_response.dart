//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class LabelsResponse {
  /// Returns a new [LabelsResponse] instance.
  LabelsResponse({
    this.labels = const [],
    this.links,
  });

  List<Label>? labels;

  Links? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LabelsResponse &&
     other.labels == labels &&
     other.links == links;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
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

  /// Returns a new [LabelsResponse] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static LabelsResponse fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return LabelsResponse(
        labels: Label.listFromJson(json[r'labels']),
        links: json[r'links'] == null ? null : Links.fromJson(json[r'links']),
      );
  }

  static List<LabelsResponse>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LabelsResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LabelsResponse>[];

  static Map<String, LabelsResponse?> mapFromJson(dynamic json) {
    final map = <String, LabelsResponse?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = LabelsResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LabelsResponse-objects as value to a dart map
  static Map<String, List<LabelsResponse?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<LabelsResponse?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = LabelsResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

