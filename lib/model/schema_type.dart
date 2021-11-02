//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class SchemaType {
  /// Instantiate a new enum with the provided [value].
  const SchemaType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const implicit = SchemaType._(r'implicit');
  static const explicit = SchemaType._(r'explicit');

  /// List of all possible values in this [enum][SchemaType].
  static const values = <SchemaType>[
    implicit,
    explicit,
  ];

  static SchemaType fromJson(dynamic value) =>
    SchemaTypeTypeTransformer().decode(value)!;

  static List<SchemaType>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SchemaType.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SchemaType>[];
}

/// Transformation class that can [encode] an instance of [SchemaType] to String,
/// and [decode] dynamic data back to [SchemaType].
class SchemaTypeTypeTransformer {
  factory SchemaTypeTypeTransformer() => _instance ??= const SchemaTypeTypeTransformer._();

  const SchemaTypeTypeTransformer._();

  String encode(SchemaType data) => data.value;

  /// Decodes a [dynamic value][data] to a SchemaType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SchemaType? decode(dynamic data) {
    if (data != null) {
      switch (data.toString()) {
        case r'implicit': return SchemaType.implicit;
        case r'explicit': return SchemaType.explicit;
        default: return SchemaType._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [SchemaTypeTypeTransformer] instance.
  static SchemaTypeTypeTransformer? _instance;
}

