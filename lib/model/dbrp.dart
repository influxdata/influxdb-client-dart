//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class DBRP {
  /// Returns a new [DBRP] instance.
  DBRP({
    required this.id,
    required this.orgID,
    required this.bucketID,
    required this.database,
    required this.retentionPolicy,
    required this.default_,
    this.links,
  });

  /// the mapping identifier
  String? id;

  /// the organization ID that owns this mapping.
  String? orgID;

  /// the bucket ID used as target for the translation.
  String? bucketID;

  /// InfluxDB v1 database
  String? database;

  /// InfluxDB v1 retention policy
  String? retentionPolicy;

  /// Specify if this mapping represents the default retention policy for the database specificed.
  bool? default_;

  Links? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DBRP &&
     other.id == id &&
     other.orgID == orgID &&
     other.bucketID == bucketID &&
     other.database == database &&
     other.retentionPolicy == retentionPolicy &&
     other.default_ == default_ &&
     other.links == links;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (orgID == null ? 0 : orgID.hashCode) +
    (bucketID == null ? 0 : bucketID.hashCode) +
    (database == null ? 0 : database.hashCode) +
    (retentionPolicy == null ? 0 : retentionPolicy.hashCode) +
    (default_ == null ? 0 : default_.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'DBRP[id=$id, orgID=$orgID, bucketID=$bucketID, database=$database, retentionPolicy=$retentionPolicy, default_=$default_, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'orgID'] = orgID;
      json[r'bucketID'] = bucketID;
      json[r'database'] = database;
      json[r'retention_policy'] = retentionPolicy;
      json[r'default'] = default_;
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [DBRP] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static DBRP fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return DBRP(
        id: mapValueOfType<String>(json, r'id'),
        orgID: mapValueOfType<String>(json, r'orgID'),
        bucketID: mapValueOfType<String>(json, r'bucketID'),
        database: mapValueOfType<String>(json, r'database'),
        retentionPolicy: mapValueOfType<String>(json, r'retention_policy'),
        default_: mapValueOfType<bool>(json, r'default'),
        links: json[r'links'] == null ? null : Links.fromJson(json[r'links']),
      );
  }

  static List<DBRP>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DBRP.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DBRP>[];

  static Map<String, DBRP?> mapFromJson(dynamic json) {
    final map = <String, DBRP?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DBRP.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DBRP-objects as value to a dart map
  static Map<String, List<DBRP?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<DBRP?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DBRP.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

