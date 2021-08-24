//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class DBRPCreate {
  /// Returns a new [DBRPCreate] instance.
  DBRPCreate({
    this.orgID,
    this.org,
    @required this.bucketID,
    @required this.database,
    @required this.retentionPolicy,
    this.default_,
  });

  /// the organization ID that owns this mapping.
  String orgID;

  /// the organization that owns this mapping.
  String org;

  /// the bucket ID used as target for the translation.
  String bucketID;

  /// InfluxDB v1 database
  String database;

  /// InfluxDB v1 retention policy
  String retentionPolicy;

  /// Specify if this mapping represents the default retention policy for the database specificed.
  bool default_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DBRPCreate &&
     other.orgID == orgID &&
     other.org == org &&
     other.bucketID == bucketID &&
     other.database == database &&
     other.retentionPolicy == retentionPolicy &&
     other.default_ == default_;

  @override
  int get hashCode =>
    (orgID == null ? 0 : orgID.hashCode) +
    (org == null ? 0 : org.hashCode) +
    (bucketID == null ? 0 : bucketID.hashCode) +
    (database == null ? 0 : database.hashCode) +
    (retentionPolicy == null ? 0 : retentionPolicy.hashCode) +
    (default_ == null ? 0 : default_.hashCode);

  @override
  String toString() => 'DBRPCreate[orgID=$orgID, org=$org, bucketID=$bucketID, database=$database, retentionPolicy=$retentionPolicy, default_=$default_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (orgID != null) {
      json[r'orgID'] = orgID;
    }
    if (org != null) {
      json[r'org'] = org;
    }
      json[r'bucketID'] = bucketID;
      json[r'database'] = database;
      json[r'retention_policy'] = retentionPolicy;
    if (default_ != null) {
      json[r'default'] = default_;
    }
    return json;
  }

  /// Returns a new [DBRPCreate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DBRPCreate fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DBRPCreate(
        orgID: json[r'orgID'],
        org: json[r'org'],
        bucketID: json[r'bucketID'],
        database: json[r'database'],
        retentionPolicy: json[r'retention_policy'],
        default_: json[r'default'],
    );

  static List<DBRPCreate> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DBRPCreate>[]
      : json.map((dynamic value) => DBRPCreate.fromJson(value)).toList(growable: true == growable);

  static Map<String, DBRPCreate> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DBRPCreate>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = DBRPCreate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DBRPCreate-objects as value to a dart map
  static Map<String, List<DBRPCreate>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DBRPCreate>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = DBRPCreate.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

