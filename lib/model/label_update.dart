//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  /// Returns a new [LabelUpdate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static LabelUpdate? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : LabelUpdate(
        name: json[r'name'],
        properties: json[r'properties'] == null ?
          null :
          (json[r'properties'] as Map).cast<String, String>(),
    );

  static List<LabelUpdate?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <LabelUpdate>[]
      : json.map((dynamic value) => LabelUpdate.fromJson(value)).toList(growable: true == growable);

  static Map<String, LabelUpdate?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, LabelUpdate?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = LabelUpdate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LabelUpdate-objects as value to a dart map
  static Map<String, List<LabelUpdate?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<LabelUpdate?>?> map = <String, List<LabelUpdate>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = LabelUpdate.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

