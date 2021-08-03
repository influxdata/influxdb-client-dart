//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PatchRetentionRule {
  /// Returns a new [PatchRetentionRule] instance.
  PatchRetentionRule({
    this.type = const PatchRetentionRuleTypeEnum._('expire'),
    this.everySeconds,
    this.shardGroupDurationSeconds,
  });

  PatchRetentionRuleTypeEnum type;

  /// Duration in seconds for how long data will be kept in the database. 0 means infinite.
  // minimum: 0
  int everySeconds;

  /// Shard duration measured in seconds.
  int shardGroupDurationSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchRetentionRule &&
     other.type == type &&
     other.everySeconds == everySeconds &&
     other.shardGroupDurationSeconds == shardGroupDurationSeconds;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (everySeconds == null ? 0 : everySeconds.hashCode) +
    (shardGroupDurationSeconds == null ? 0 : shardGroupDurationSeconds.hashCode);

  @override
  String toString() => 'PatchRetentionRule[type=$type, everySeconds=$everySeconds, shardGroupDurationSeconds=$shardGroupDurationSeconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
    if (everySeconds != null) {
      json[r'everySeconds'] = everySeconds;
    }
    if (shardGroupDurationSeconds != null) {
      json[r'shardGroupDurationSeconds'] = shardGroupDurationSeconds;
    }
    return json;
  }

  /// Returns a new [PatchRetentionRule] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PatchRetentionRule fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PatchRetentionRule(
        type: PatchRetentionRuleTypeEnum.fromJson(json[r'type']),
        everySeconds: json[r'everySeconds'],
        shardGroupDurationSeconds: json[r'shardGroupDurationSeconds'],
    );

  static List<PatchRetentionRule> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PatchRetentionRule>[]
      : json.map((v) => PatchRetentionRule.fromJson(v)).toList(growable: true == growable);

  static Map<String, PatchRetentionRule> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PatchRetentionRule>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PatchRetentionRule.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PatchRetentionRule-objects as value to a dart map
  static Map<String, List<PatchRetentionRule>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PatchRetentionRule>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PatchRetentionRule.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class PatchRetentionRuleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PatchRetentionRuleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const expire = PatchRetentionRuleTypeEnum._(r'expire');

  /// List of all possible values in this [enum][PatchRetentionRuleTypeEnum].
  static const values = <PatchRetentionRuleTypeEnum>[
    expire,
  ];

  static PatchRetentionRuleTypeEnum fromJson(dynamic value) =>
    PatchRetentionRuleTypeEnumTypeTransformer().decode(value);

  static List<PatchRetentionRuleTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PatchRetentionRuleTypeEnum>[]
      : json
          .map((value) => PatchRetentionRuleTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [PatchRetentionRuleTypeEnum] to String,
/// and [decode] dynamic data back to [PatchRetentionRuleTypeEnum].
class PatchRetentionRuleTypeEnumTypeTransformer {
  const PatchRetentionRuleTypeEnumTypeTransformer._();

  factory PatchRetentionRuleTypeEnumTypeTransformer() => _instance ??= PatchRetentionRuleTypeEnumTypeTransformer._();

  String encode(PatchRetentionRuleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PatchRetentionRuleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PatchRetentionRuleTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'expire': return PatchRetentionRuleTypeEnum.expire;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PatchRetentionRuleTypeEnumTypeTransformer] instance.
  static PatchRetentionRuleTypeEnumTypeTransformer _instance;
}

