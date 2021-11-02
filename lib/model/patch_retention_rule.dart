//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PatchRetentionRule {
  /// Returns a new [PatchRetentionRule] instance.
  PatchRetentionRule({
    this.type = const PatchRetentionRuleTypeEnum._('expire'),
    this.everySeconds,
    this.shardGroupDurationSeconds,
  });

  PatchRetentionRuleTypeEnum? type;

  /// Duration in seconds for how long data will be kept in the database. 0 means infinite.
  // minimum: 0
  int? everySeconds;

  /// Shard duration measured in seconds.
  int? shardGroupDurationSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchRetentionRule &&
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

  /// Returns a new [PatchRetentionRule] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static PatchRetentionRule fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return PatchRetentionRule(
        type: PatchRetentionRuleTypeEnum.fromJson(json[r'type']),
        everySeconds: mapValueOfType<int>(json, r'everySeconds'),
        shardGroupDurationSeconds: mapValueOfType<int>(json, r'shardGroupDurationSeconds'),
      );
  }

  static List<PatchRetentionRule>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PatchRetentionRule.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PatchRetentionRule>[];

  static Map<String, PatchRetentionRule?> mapFromJson(dynamic json) {
    final map = <String, PatchRetentionRule?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PatchRetentionRule.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PatchRetentionRule-objects as value to a dart map
  static Map<String, List<PatchRetentionRule?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<PatchRetentionRule?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PatchRetentionRule.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
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

  static PatchRetentionRuleTypeEnum? fromJson(dynamic value) =>
    PatchRetentionRuleTypeEnumTypeTransformer().decode(value);

  static List<PatchRetentionRuleTypeEnum?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PatchRetentionRuleTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PatchRetentionRuleTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [PatchRetentionRuleTypeEnum] to String,
/// and [decode] dynamic data back to [PatchRetentionRuleTypeEnum].
class PatchRetentionRuleTypeEnumTypeTransformer {
  factory PatchRetentionRuleTypeEnumTypeTransformer() => _instance ??= const PatchRetentionRuleTypeEnumTypeTransformer._();

  const PatchRetentionRuleTypeEnumTypeTransformer._();

  String encode(PatchRetentionRuleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PatchRetentionRuleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PatchRetentionRuleTypeEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'expire': return PatchRetentionRuleTypeEnum.expire;
        default: return PatchRetentionRuleTypeEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [PatchRetentionRuleTypeEnumTypeTransformer] instance.
  static PatchRetentionRuleTypeEnumTypeTransformer? _instance;
}


