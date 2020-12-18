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
  });

  RetentionRuleTypeEnum type;

  /// Duration in seconds for how long data will be kept in the database.
  // minimum: 1
  int everySeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetentionRule &&
     other.type == type &&
     other.everySeconds == everySeconds;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (everySeconds == null ? 0 : everySeconds.hashCode);

  @override
  String toString() => 'RetentionRule[type=$type, everySeconds=$everySeconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (everySeconds != null) {
      json[r'everySeconds'] = everySeconds;
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
    );

  static List<RetentionRule> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RetentionRule>[]
      : json.map((v) => RetentionRule.fromJson(v)).toList(growable: true == growable);

  static Map<String, RetentionRule> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RetentionRule>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RetentionRule.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RetentionRule-objects as value to a dart map
  static Map<String, List<RetentionRule>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RetentionRule>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RetentionRule.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
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
  bool operator ==(Object other) => identical(this, other) ||
      other is RetentionRuleTypeEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

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

