//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class ScriptLanguage {
  /// Instantiate a new enum with the provided [value].
  const ScriptLanguage._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const flux = ScriptLanguage._(r'flux');

  /// List of all possible values in this [enum][ScriptLanguage].
  static const values = <ScriptLanguage>[
    flux,
  ];

  static ScriptLanguage fromJson(dynamic value) =>
      ScriptLanguageTypeTransformer().decode(value)!;

  static List<ScriptLanguage>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(ScriptLanguage.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ScriptLanguage>[];
}

/// Transformation class that can [encode] an instance of [ScriptLanguage] to String,
/// and [decode] dynamic data back to [ScriptLanguage].
class ScriptLanguageTypeTransformer {
  factory ScriptLanguageTypeTransformer() =>
      _instance ??= const ScriptLanguageTypeTransformer._();

  const ScriptLanguageTypeTransformer._();

  String encode(ScriptLanguage data) => data.value;

  /// Decodes a [dynamic value][data] to a ScriptLanguage.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScriptLanguage? decode(dynamic data) {
    if (data != null) {
      switch (data.toString()) {
        case r'flux':
          return ScriptLanguage.flux;
        default:
          return ScriptLanguage._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [ScriptLanguageTypeTransformer] instance.
  static ScriptLanguageTypeTransformer? _instance;
}
