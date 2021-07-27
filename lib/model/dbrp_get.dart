//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class DBRPGet {
  /// Returns a new [DBRPGet] instance.
  DBRPGet({
    this.content,
  });

  DBRP content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DBRPGet &&
     other.content == content;

  @override
  int get hashCode =>
    (content == null ? 0 : content.hashCode);

  @override
  String toString() => 'DBRPGet[content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (content != null) {
      json[r'content'] = content;
    }
    return json;
  }

  /// Returns a new [DBRPGet] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DBRPGet fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DBRPGet(
        content: DBRP.fromJson(json[r'content']),
    );

  static List<DBRPGet> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DBRPGet>[]
      : json.map((v) => DBRPGet.fromJson(v)).toList(growable: true == growable);

  static Map<String, DBRPGet> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DBRPGet>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DBRPGet.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DBRPGet-objects as value to a dart map
  static Map<String, List<DBRPGet>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DBRPGet>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DBRPGet.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

