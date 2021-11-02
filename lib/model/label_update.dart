//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class LabelUpdate {
  /// Returns a new [LabelUpdate] instance.
  LabelUpdate({
    this.name,
    this.properties = const {},
  });

  String? name;

  /// Key/Value pairs associated with this label. Keys can be removed by sending an update with an empty value.
  Map<String, String>? properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LabelUpdate &&
     other.name == name &&
     other.properties == properties;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'LabelUpdate[name=$name, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (properties != null) {
      json[r'properties'] = properties;
    }
    return json;
  }

  /// Returns a new [LabelUpdate] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static LabelUpdate fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return LabelUpdate(
        name: mapValueOfType<String>(json, r'name'),
        properties: mapCastOfType<String, String>(json, r'properties'),
      );
  }

  static List<LabelUpdate>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LabelUpdate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LabelUpdate>[];

  static Map<String, LabelUpdate?> mapFromJson(dynamic json) {
    final map = <String, LabelUpdate?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = LabelUpdate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LabelUpdate-objects as value to a dart map
  static Map<String, List<LabelUpdate?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<LabelUpdate?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = LabelUpdate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

