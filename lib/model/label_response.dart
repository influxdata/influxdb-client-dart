//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
  // ignore: unnecessary_parenthesis
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

  /// Returns a new [LabelResponse] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static LabelResponse fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return LabelResponse(
        label: json[r'label'] == null ? null : Label.fromJson(json[r'label']),
        links: json[r'links'] == null ? null : Links.fromJson(json[r'links']),
      );
  }

  static List<LabelResponse>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LabelResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LabelResponse>[];

  static Map<String, LabelResponse?> mapFromJson(dynamic json) {
    final map = <String, LabelResponse?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = LabelResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LabelResponse-objects as value to a dart map
  static Map<String, List<LabelResponse?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<LabelResponse?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = LabelResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

