//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Ready {
  /// Returns a new [Ready] instance.
  Ready({
    this.status,
    this.started,
    this.up,
  });

  ReadyStatusEnum status;

  DateTime started;

  String up;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Ready &&
     other.status == status &&
     other.started == started &&
     other.up == up;

  @override
  int get hashCode =>
    (status == null ? 0 : status.hashCode) +
    (started == null ? 0 : started.hashCode) +
    (up == null ? 0 : up.hashCode);

  @override
  String toString() => 'Ready[status=$status, started=$started, up=$up]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (status != null) {
      json[r'status'] = status;
    }
    if (started != null) {
      json[r'started'] = started.toUtc().toIso8601String();
    }
    if (up != null) {
      json[r'up'] = up;
    }
    return json;
  }

  /// Returns a new [Ready] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Ready fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Ready(
        status: ReadyStatusEnum.fromJson(json[r'status']),
        started: json[r'started'] == null
          ? null
          : DateTime.parse(json[r'started']),
        up: json[r'up'],
    );

  static List<Ready> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Ready>[]
      : json.map((dynamic value) => Ready.fromJson(value)).toList(growable: true == growable);

  static Map<String, Ready> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Ready>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Ready.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Ready-objects as value to a dart map
  static Map<String, List<Ready>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Ready>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Ready.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}


class ReadyStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ReadyStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ready = ReadyStatusEnum._(r'ready');

  /// List of all possible values in this [enum][ReadyStatusEnum].
  static const values = <ReadyStatusEnum>[
    ready,
  ];

  static ReadyStatusEnum fromJson(dynamic value) =>
    ReadyStatusEnumTypeTransformer().decode(value);

  static List<ReadyStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ReadyStatusEnum>[]
      : json
          .map((value) => ReadyStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ReadyStatusEnum] to String,
/// and [decode] dynamic data back to [ReadyStatusEnum].
class ReadyStatusEnumTypeTransformer {
  const ReadyStatusEnumTypeTransformer._();

  factory ReadyStatusEnumTypeTransformer() => _instance ??= ReadyStatusEnumTypeTransformer._();

  String encode(ReadyStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReadyStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReadyStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'ready': return ReadyStatusEnum.ready;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ReadyStatusEnumTypeTransformer] instance.
  static ReadyStatusEnumTypeTransformer _instance;
}

