//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  /// Returns a new [DBRPUpdate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DBRPUpdate? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : DBRPUpdate(
        retentionPolicy: json[r'retention_policy'],
        default_: json[r'default'],
    );

  static List<DBRPUpdate?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <DBRPUpdate>[]
      : json.map((dynamic value) => DBRPUpdate.fromJson(value)).toList(growable: true == growable);

  static Map<String, DBRPUpdate?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DBRPUpdate?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = DBRPUpdate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DBRPUpdate-objects as value to a dart map
  static Map<String, List<DBRPUpdate?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<DBRPUpdate?>?> map = <String, List<DBRPUpdate>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = DBRPUpdate.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

