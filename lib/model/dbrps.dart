//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class DBRPs {
  /// Returns a new [DBRPs] instance.
  DBRPs({
    this.content = const [],
  });

  List<DBRP> content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DBRPs &&
     other.content == content;

  @override
  int get hashCode =>
    (content == null ? 0 : content.hashCode);

  @override
  String toString() => 'DBRPs[content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (content != null) {
      json[r'content'] = content;
    }
    return json;
  }

  /// Returns a new [DBRPs] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DBRPs fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DBRPs(
        content: DBRP.listFromJson(json[r'content']),
    );

  static List<DBRPs> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DBRPs>[]
      : json.map((v) => DBRPs.fromJson(v)).toList(growable: true == growable);

  static Map<String, DBRPs> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DBRPs>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DBRPs.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DBRPs-objects as value to a dart map
  static Map<String, List<DBRPs>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DBRPs>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DBRPs.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

