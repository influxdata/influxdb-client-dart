//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class LabelMapping {
  /// Returns a new [LabelMapping] instance.
  LabelMapping({
    this.labelID,
  });

  String labelID;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LabelMapping &&
     other.labelID == labelID;

  @override
  int get hashCode =>
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

  /// Returns a new [LabelMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static LabelMapping fromJson(Map<String, dynamic> json) => json == null
    ? null
    : LabelMapping(
        labelID: json[r'labelID'],
    );

  static List<LabelMapping> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <LabelMapping>[]
      : json.map((dynamic value) => LabelMapping.fromJson(value)).toList(growable: true == growable);

  static Map<String, LabelMapping> mapFromJson(Map<String, dynamic> json) {
    final map = <String, LabelMapping>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = LabelMapping.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LabelMapping-objects as value to a dart map
  static Map<String, List<LabelMapping>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LabelMapping>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = LabelMapping.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

