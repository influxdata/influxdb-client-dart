//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class RetentionRule {
  /// Returns a new [RetentionRule] instance.
  RetentionRule({
    this.type = const RetentionRuleTypeEnum._('expire'),
    required this.everySeconds,
    this.shardGroupDurationSeconds,
  });

  RetentionRuleTypeEnum? type;

  /// Duration in seconds for how long data will be kept in the database. 0 means infinite.
  // minimum: 0
  int? everySeconds;

  /// Shard duration measured in seconds.
  int? shardGroupDurationSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RetentionRule &&
     other.type == type &&
     other.everySeconds == everySeconds &&
     other.shardGroupDurationSeconds == shardGroupDurationSeconds;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
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

  /// Returns a new [RetentionRule] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static RetentionRule fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return RetentionRule(
        type: RetentionRuleTypeEnum.fromJson(json[r'type']),
        everySeconds: mapValueOfType<int>(json, r'everySeconds'),
        shardGroupDurationSeconds: mapValueOfType<int>(json, r'shardGroupDurationSeconds'),
      );
  }

  static List<RetentionRule>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RetentionRule.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RetentionRule>[];

  static Map<String, RetentionRule?> mapFromJson(dynamic json) {
    final map = <String, RetentionRule?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RetentionRule.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RetentionRule-objects as value to a dart map
  static Map<String, List<RetentionRule?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<RetentionRule?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RetentionRule.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
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

  static RetentionRuleTypeEnum? fromJson(dynamic value) =>
    RetentionRuleTypeEnumTypeTransformer().decode(value);

  static List<RetentionRuleTypeEnum?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RetentionRuleTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RetentionRuleTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [RetentionRuleTypeEnum] to String,
/// and [decode] dynamic data back to [RetentionRuleTypeEnum].
class RetentionRuleTypeEnumTypeTransformer {
  factory RetentionRuleTypeEnumTypeTransformer() => _instance ??= const RetentionRuleTypeEnumTypeTransformer._();

  const RetentionRuleTypeEnumTypeTransformer._();

  String encode(RetentionRuleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RetentionRuleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RetentionRuleTypeEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'expire': return RetentionRuleTypeEnum.expire;
        default: return RetentionRuleTypeEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [RetentionRuleTypeEnumTypeTransformer] instance.
  static RetentionRuleTypeEnumTypeTransformer? _instance;
}


