//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class VariableProperties {
  /// Returns a new [VariableProperties] instance.
  VariableProperties({
    this.type,
    this.values = const {},
  });

  VariablePropertiesTypeEnum? type;

  Map<String, String>? values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VariableProperties &&
     other.type == type &&
     other.values == values;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (values == null ? 0 : values.hashCode);

  @override
  String toString() => 'VariableProperties[type=$type, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (values != null) {
      json[r'values'] = values;
    }
    return json;
  }

  /// Returns a new [VariableProperties] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static VariableProperties? fromJson(Map<String, dynamic>? json) => json == null
    ? null
    : VariableProperties(
        type: VariablePropertiesTypeEnum.fromJson(json[r'type']),
        values: json[r'values'] == null ?
          null :
          (json[r'values'] as Map).cast<String, String>(),
    );

  static List<VariableProperties?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <VariableProperties>[]
      : json.map((dynamic value) => VariableProperties.fromJson(value)).toList(growable: true == growable);

  static Map<String, VariableProperties?> mapFromJson(Map<String, dynamic> json) {
    final map = <String, VariableProperties?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = VariableProperties.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VariableProperties-objects as value to a dart map
  static Map<String, List<VariableProperties?>?> mapListFromJson(Map<String, dynamic> json, {bool? emptyIsNull, bool? growable,}) {
    final Map<String, List<VariableProperties?>?> map = <String, List<VariableProperties>?>{};
    if (json.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = VariableProperties.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}


class VariablePropertiesTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const VariablePropertiesTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const map = VariablePropertiesTypeEnum._(r'map');

  /// List of all possible values in this [enum][VariablePropertiesTypeEnum].
  static const values = <VariablePropertiesTypeEnum>[
    map,
  ];

  static VariablePropertiesTypeEnum? fromJson(dynamic value) =>
    VariablePropertiesTypeEnumTypeTransformer().decode(value);

  static List<VariablePropertiesTypeEnum?>? listFromJson(List<dynamic> json, {bool? emptyIsNull, bool? growable,}) =>
     json.isEmpty
      ? true == emptyIsNull ? null : <VariablePropertiesTypeEnum>[]
      : json
          .map((value) => VariablePropertiesTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [VariablePropertiesTypeEnum] to String,
/// and [decode] dynamic data back to [VariablePropertiesTypeEnum].
class VariablePropertiesTypeEnumTypeTransformer {
  const VariablePropertiesTypeEnumTypeTransformer._();

  factory VariablePropertiesTypeEnumTypeTransformer() => _instance ??= VariablePropertiesTypeEnumTypeTransformer._();

  String encode(VariablePropertiesTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VariablePropertiesTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VariablePropertiesTypeEnum? decode(dynamic data, {bool? allowNull}) {
    switch (data) {
      case r'map': return VariablePropertiesTypeEnum.map;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [VariablePropertiesTypeEnumTypeTransformer] instance.
  static VariablePropertiesTypeEnumTypeTransformer? _instance;
}

