//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class RetentionRule {
  /// Returns a new [RetentionRule] instance.
  RetentionRule({
    this.type = const RetentionRuleTypeEnum._('expire'),
    @required this.everySeconds,
    this.shardGroupDurationSeconds,
  });

  RetentionRuleTypeEnum type;

  /// Duration in seconds for how long data will be kept in the database. 0 means infinite.
  // minimum: 0
  int everySeconds;

  /// Shard duration measured in seconds.
  int shardGroupDurationSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetentionRule &&
     other.type == type &&
     other.everySeconds == everySeconds &&
     other.shardGroupDurationSeconds == shardGroupDurationSeconds;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (everySeconds == null ? 0 : everySeconds.hashCode) +
    (shardGroupDurationSeconds == null ? 0 : shardGroupDurationSeconds.hashCode);

  @override
  String toString() => 'RetentionRule[type=$type, everySeconds=$everySeconds, shardGroupDurationSeconds=$shardGroupDurationSeconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
      json[r'everySeconds'] = everySeconds;
    if (shardGroupDurationSeconds != null) {
      json[r'shardGroupDurationSeconds'] = shardGroupDurationSeconds;
    }
    return json;
  }

  /// Returns a new [RetentionRule] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RetentionRule fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RetentionRule(
        type: RetentionRuleTypeEnum.fromJson(json[r'type']),
        everySeconds: json[r'everySeconds'],
        shardGroupDurationSeconds: json[r'shardGroupDurationSeconds'],
    );

  static List<RetentionRule> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RetentionRule>[]
      : json.map((dynamic value) => RetentionRule.fromJson(value)).toList(growable: true == growable);

  static Map<String, RetentionRule> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RetentionRule>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = RetentionRule.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RetentionRule-objects as value to a dart map
  static Map<String, List<RetentionRule>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RetentionRule>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = RetentionRule.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}


class RetentionRuleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RetentionRuleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const expire = RetentionRuleTypeEnum._(r'expire');

  /// List of all possible values in this [enum][RetentionRuleTypeEnum].
  static const values = <RetentionRuleTypeEnum>[
    expire,
  ];

  static RetentionRuleTypeEnum fromJson(dynamic value) =>
    RetentionRuleTypeEnumTypeTransformer().decode(value);

  static List<RetentionRuleTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RetentionRuleTypeEnum>[]
      : json
          .map((value) => RetentionRuleTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RetentionRuleTypeEnum] to String,
/// and [decode] dynamic data back to [RetentionRuleTypeEnum].
class RetentionRuleTypeEnumTypeTransformer {
  const RetentionRuleTypeEnumTypeTransformer._();

  factory RetentionRuleTypeEnumTypeTransformer() => _instance ??= RetentionRuleTypeEnumTypeTransformer._();

  String encode(RetentionRuleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RetentionRuleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RetentionRuleTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'expire': return RetentionRuleTypeEnum.expire;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RetentionRuleTypeEnumTypeTransformer] instance.
  static RetentionRuleTypeEnumTypeTransformer _instance;
}

