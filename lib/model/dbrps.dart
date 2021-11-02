//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class DBRPs {
  /// Returns a new [DBRPs] instance.
  DBRPs({
    this.content = const [],
  });

  List<DBRP>? content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DBRPs &&
     other.content == content;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
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

  /// Returns a new [DBRPs] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static DBRPs fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return DBRPs(
        content: DBRP.listFromJson(json[r'content']),
      );
  }

  static List<DBRPs>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DBRPs.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DBRPs>[];

  static Map<String, DBRPs?> mapFromJson(dynamic json) {
    final map = <String, DBRPs?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DBRPs.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DBRPs-objects as value to a dart map
  static Map<String, List<DBRPs?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<DBRPs?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DBRPs.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

