//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class WritePrecision {
  /// Instantiate a new enum with the provided [value].
  const WritePrecision._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ms = WritePrecision._(r'ms');
  static const s = WritePrecision._(r's');
  static const us = WritePrecision._(r'us');
  static const ns = WritePrecision._(r'ns');

  /// List of all possible values in this [enum][WritePrecision].
  static const values = <WritePrecision>[
    ms,
    s,
    us,
    ns,
  ];

  static WritePrecision fromJson(dynamic value) =>
    WritePrecisionTypeTransformer().decode(value)!;

  static List<WritePrecision>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(WritePrecision.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <WritePrecision>[];
}

/// Transformation class that can [encode] an instance of [WritePrecision] to String,
/// and [decode] dynamic data back to [WritePrecision].
class WritePrecisionTypeTransformer {
  factory WritePrecisionTypeTransformer() => _instance ??= const WritePrecisionTypeTransformer._();

  const WritePrecisionTypeTransformer._();

  String encode(WritePrecision data) => data.value;

  /// Decodes a [dynamic value][data] to a WritePrecision.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WritePrecision? decode(dynamic data) {
    if (data != null) {
      switch (data.toString()) {
        case r'ms': return WritePrecision.ms;
        case r's': return WritePrecision.s;
        case r'us': return WritePrecision.us;
        case r'ns': return WritePrecision.ns;
        default: return WritePrecision._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [WritePrecisionTypeTransformer] instance.
  static WritePrecisionTypeTransformer? _instance;
}

