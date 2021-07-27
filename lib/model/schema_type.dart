//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
    SchemaTypeTypeTransformer().decode(value);

  static List<SchemaType> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SchemaType>[]
      : json
          .map((value) => SchemaType.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [SchemaType] to String,
/// and [decode] dynamic data back to [SchemaType].
class SchemaTypeTypeTransformer {
  const SchemaTypeTypeTransformer._();

  factory SchemaTypeTypeTransformer() => _instance ??= SchemaTypeTypeTransformer._();

  String encode(SchemaType data) => data.value;

  /// Decodes a [dynamic value][data] to a SchemaType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SchemaType decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'implicit': return SchemaType.implicit;
      case r'explicit': return SchemaType.explicit;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [SchemaTypeTypeTransformer] instance.
  static SchemaTypeTypeTransformer _instance;
}
