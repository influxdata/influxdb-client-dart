//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class DBRPGet {
  /// Returns a new [DBRPGet] instance.
  DBRPGet({
    this.content,
  });

  DBRP? content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DBRPGet &&
     other.content == content;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
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

  /// Returns a new [DBRPGet] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static DBRPGet fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return DBRPGet(
        content: json[r'content'] == null ? null : DBRP.fromJson(json[r'content']),
      );
  }

  static List<DBRPGet>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DBRPGet.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DBRPGet>[];

  static Map<String, DBRPGet?> mapFromJson(dynamic json) {
    final map = <String, DBRPGet?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DBRPGet.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DBRPGet-objects as value to a dart map
  static Map<String, List<DBRPGet?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<DBRPGet?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DBRPGet.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

