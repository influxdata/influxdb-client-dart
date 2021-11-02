//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class DBRPUpdate {
  /// Returns a new [DBRPUpdate] instance.
  DBRPUpdate({
    this.retentionPolicy,
    this.default_,
  });

  /// InfluxDB v1 retention policy
  String? retentionPolicy;

  bool? default_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DBRPUpdate &&
     other.retentionPolicy == retentionPolicy &&
     other.default_ == default_;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (retentionPolicy == null ? 0 : retentionPolicy.hashCode) +
    (default_ == null ? 0 : default_.hashCode);

  @override
  String toString() => 'DBRPUpdate[retentionPolicy=$retentionPolicy, default_=$default_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (retentionPolicy != null) {
      json[r'retention_policy'] = retentionPolicy;
    }
    if (default_ != null) {
      json[r'default'] = default_;
    }
    return json;
  }

  /// Returns a new [DBRPUpdate] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static DBRPUpdate fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return DBRPUpdate(
        retentionPolicy: mapValueOfType<String>(json, r'retention_policy'),
        default_: mapValueOfType<bool>(json, r'default'),
      );
  }

  static List<DBRPUpdate>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DBRPUpdate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DBRPUpdate>[];

  static Map<String, DBRPUpdate?> mapFromJson(dynamic json) {
    final map = <String, DBRPUpdate?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DBRPUpdate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DBRPUpdate-objects as value to a dart map
  static Map<String, List<DBRPUpdate?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<DBRPUpdate?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DBRPUpdate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

