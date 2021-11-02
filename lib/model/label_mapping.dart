//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class LabelMapping {
  /// Returns a new [LabelMapping] instance.
  LabelMapping({
    this.labelID,
  });

  String? labelID;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LabelMapping &&
     other.labelID == labelID;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (labelID == null ? 0 : labelID.hashCode);

  @override
  String toString() => 'LabelMapping[labelID=$labelID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (labelID != null) {
      json[r'labelID'] = labelID;
    }
    return json;
  }

  /// Returns a new [LabelMapping] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static LabelMapping fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return LabelMapping(
        labelID: mapValueOfType<String>(json, r'labelID'),
      );
  }

  static List<LabelMapping>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LabelMapping.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LabelMapping>[];

  static Map<String, LabelMapping?> mapFromJson(dynamic json) {
    final map = <String, LabelMapping?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = LabelMapping.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LabelMapping-objects as value to a dart map
  static Map<String, List<LabelMapping?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<LabelMapping?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = LabelMapping.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

