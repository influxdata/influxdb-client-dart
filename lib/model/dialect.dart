//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Dialect {
  /// Returns a new [Dialect] instance.
  Dialect({
    this.header = true,
    this.delimiter = ',',
    this.annotations = const [],
    this.commentPrefix = '#',
    this.dateTimeFormat = DialectDateTimeFormatEnum.rFC3339,
  });

  /// If true, the results will contain a header row
  bool header;

  /// Separator between cells; the default is ,
  String delimiter;

  /// https://www.w3.org/TR/2015/REC-tabular-data-model-20151217/#columns
  List<DialectAnnotationsEnum> annotations;

  /// Character prefixed to comment strings
  String commentPrefix;

  /// Format of timestamps
  DialectDateTimeFormatEnum dateTimeFormat;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Dialect &&
     other.header == header &&
     other.delimiter == delimiter &&
     other.annotations == annotations &&
     other.commentPrefix == commentPrefix &&
     other.dateTimeFormat == dateTimeFormat;

  @override
  int get hashCode =>
    (header == null ? 0 : header.hashCode) +
    (delimiter == null ? 0 : delimiter.hashCode) +
    (annotations == null ? 0 : annotations.hashCode) +
    (commentPrefix == null ? 0 : commentPrefix.hashCode) +
    (dateTimeFormat == null ? 0 : dateTimeFormat.hashCode);

  @override
  String toString() => 'Dialect[header=$header, delimiter=$delimiter, annotations=$annotations, commentPrefix=$commentPrefix, dateTimeFormat=$dateTimeFormat]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (header != null) {
      json[r'header'] = header;
    }
    if (delimiter != null) {
      json[r'delimiter'] = delimiter;
    }
    if (annotations != null) {
      json[r'annotations'] = annotations;
    }
    if (commentPrefix != null) {
      json[r'commentPrefix'] = commentPrefix;
    }
    if (dateTimeFormat != null) {
      json[r'dateTimeFormat'] = dateTimeFormat;
    }
    return json;
  }

  /// Returns a new [Dialect] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Dialect fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Dialect(
        header: json[r'header'],
        delimiter: json[r'delimiter'],
        annotations: DialectAnnotationsEnum.listFromJson(json[r'annotations']),
        commentPrefix: json[r'commentPrefix'],
        dateTimeFormat: DialectDateTimeFormatEnum.fromJson(json[r'dateTimeFormat']),
    );

  static List<Dialect> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Dialect>[]
      : json.map((v) => Dialect.fromJson(v)).toList(growable: true == growable);

  static Map<String, Dialect> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Dialect>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Dialect.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Dialect-objects as value to a dart map
  static Map<String, List<Dialect>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Dialect>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Dialect.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// https://www.w3.org/TR/2015/REC-tabular-data-model-20151217/#columns
class DialectAnnotationsEnum {
  /// Instantiate a new enum with the provided [value].
  const DialectAnnotationsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DialectAnnotationsEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value.toString();

  String toJson() => value;

  static const group = DialectAnnotationsEnum._(r'group');
  static const datatype = DialectAnnotationsEnum._(r'datatype');
  static const default_ = DialectAnnotationsEnum._(r'default');

  /// List of all possible values in this [enum][DialectAnnotationsEnum].
  static const values = <DialectAnnotationsEnum>[
    group,
    datatype,
    default_,
  ];

  static DialectAnnotationsEnum fromJson(dynamic value) =>
    DialectAnnotationsEnumTypeTransformer().decode(value);

  static List<DialectAnnotationsEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DialectAnnotationsEnum>[]
      : json
          .map((value) => DialectAnnotationsEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [DialectAnnotationsEnum] to ModelSet<String>,
/// and [decode] dynamic data back to [DialectAnnotationsEnum].
class DialectAnnotationsEnumTypeTransformer {
  const DialectAnnotationsEnumTypeTransformer._();

  factory DialectAnnotationsEnumTypeTransformer() => _instance ??= DialectAnnotationsEnumTypeTransformer._();

  String encode(DialectAnnotationsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DialectAnnotationsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DialectAnnotationsEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'group': return DialectAnnotationsEnum.group;
      case r'datatype': return DialectAnnotationsEnum.datatype;
      case r'default': return DialectAnnotationsEnum.default_;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DialectAnnotationsEnumTypeTransformer] instance.
  static DialectAnnotationsEnumTypeTransformer _instance;
}

/// Format of timestamps
class DialectDateTimeFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const DialectDateTimeFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DialectDateTimeFormatEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const rFC3339 = DialectDateTimeFormatEnum._(r'RFC3339');
  static const rFC3339Nano = DialectDateTimeFormatEnum._(r'RFC3339Nano');

  /// List of all possible values in this [enum][DialectDateTimeFormatEnum].
  static const values = <DialectDateTimeFormatEnum>[
    rFC3339,
    rFC3339Nano,
  ];

  static DialectDateTimeFormatEnum fromJson(dynamic value) =>
    DialectDateTimeFormatEnumTypeTransformer().decode(value);

  static List<DialectDateTimeFormatEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DialectDateTimeFormatEnum>[]
      : json
          .map((value) => DialectDateTimeFormatEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [DialectDateTimeFormatEnum] to String,
/// and [decode] dynamic data back to [DialectDateTimeFormatEnum].
class DialectDateTimeFormatEnumTypeTransformer {
  const DialectDateTimeFormatEnumTypeTransformer._();

  factory DialectDateTimeFormatEnumTypeTransformer() => _instance ??= DialectDateTimeFormatEnumTypeTransformer._();

  String encode(DialectDateTimeFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DialectDateTimeFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DialectDateTimeFormatEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RFC3339': return DialectDateTimeFormatEnum.rFC3339;
      case r'RFC3339Nano': return DialectDateTimeFormatEnum.rFC3339Nano;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DialectDateTimeFormatEnumTypeTransformer] instance.
  static DialectDateTimeFormatEnumTypeTransformer _instance;
}

