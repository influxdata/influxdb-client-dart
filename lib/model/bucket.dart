//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Bucket {
  /// Returns a new [Bucket] instance.
  Bucket({
    this.links,
    this.id,
    this.type = const BucketTypeEnum._('user'),
    @required this.name,
    this.description,
    this.orgID,
    this.rp,
    this.createdAt,
    this.updatedAt,
    this.retentionRules = const [],
    this.labels = const [],
  });

  BucketLinks links;

  String id;

  BucketTypeEnum type;

  String name;

  String description;

  String orgID;

  String rp;

  DateTime createdAt;

  DateTime updatedAt;

  /// Rules to expire or retain data.  No rules means data never expires.
  List<RetentionRule> retentionRules;

  List<Label> labels;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Bucket &&
     other.links == links &&
     other.id == id &&
     other.type == type &&
     other.name == name &&
     other.description == description &&
     other.orgID == orgID &&
     other.rp == rp &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.retentionRules == retentionRules &&
     other.labels == labels;

  @override
  int get hashCode =>
    (links == null ? 0 : links.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (orgID == null ? 0 : orgID.hashCode) +
    (rp == null ? 0 : rp.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (retentionRules == null ? 0 : retentionRules.hashCode) +
    (labels == null ? 0 : labels.hashCode);

  @override
  String toString() => 'Bucket[links=$links, id=$id, type=$type, name=$name, description=$description, orgID=$orgID, rp=$rp, createdAt=$createdAt, updatedAt=$updatedAt, retentionRules=$retentionRules, labels=$labels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'links'] = links;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (orgID != null) {
      json[r'orgID'] = orgID;
    }
    if (rp != null) {
      json[r'rp'] = rp;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (retentionRules != null) {
      json[r'retentionRules'] = retentionRules;
    }
    if (labels != null) {
      json[r'labels'] = labels;
    }
    return json;
  }

  /// Returns a new [Bucket] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Bucket fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Bucket(
        links: BucketLinks.fromJson(json[r'links']),
        id: json[r'id'],
        type: BucketTypeEnum.fromJson(json[r'type']),
        name: json[r'name'],
        description: json[r'description'],
        orgID: json[r'orgID'],
        rp: json[r'rp'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        retentionRules: RetentionRule.listFromJson(json[r'retentionRules']),
        labels: Label.listFromJson(json[r'labels']),
    );

  static List<Bucket> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Bucket>[]
      : json.map((v) => Bucket.fromJson(v)).toList(growable: true == growable);

  static Map<String, Bucket> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Bucket>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Bucket.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Bucket-objects as value to a dart map
  static Map<String, List<Bucket>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Bucket>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Bucket.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class BucketTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const BucketTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BucketTypeEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const user = BucketTypeEnum._(r'user');
  static const system = BucketTypeEnum._(r'system');

  /// List of all possible values in this [enum][BucketTypeEnum].
  static const values = <BucketTypeEnum>[
    user,
    system,
  ];

  static BucketTypeEnum fromJson(dynamic value) =>
    BucketTypeEnumTypeTransformer().decode(value);

  static List<BucketTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BucketTypeEnum>[]
      : json
          .map((value) => BucketTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [BucketTypeEnum] to String,
/// and [decode] dynamic data back to [BucketTypeEnum].
class BucketTypeEnumTypeTransformer {
  const BucketTypeEnumTypeTransformer._();

  factory BucketTypeEnumTypeTransformer() => _instance ??= BucketTypeEnumTypeTransformer._();

  String encode(BucketTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BucketTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BucketTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'user': return BucketTypeEnum.user;
      case r'system': return BucketTypeEnum.system;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [BucketTypeEnumTypeTransformer] instance.
  static BucketTypeEnumTypeTransformer _instance;
}

