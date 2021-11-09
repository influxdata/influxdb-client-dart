//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Ready {
  /// Returns a new [Ready] instance.
  Ready({
    this.status,
    this.started,
    this.up,
  });

  ReadyStatusEnum? status;

  DateTime? started;

  String? up;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ready &&
          other.status == status &&
          other.started == started &&
          other.up == up;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
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
      json[r'started'] = started!.toUtc().toIso8601String();
    }
    if (up != null) {
      json[r'up'] = up;
    }
    return json;
  }

  /// Returns a new [Ready] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Ready fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Ready(
      status: ReadyStatusEnum.fromJson(json[r'status']),
      started: mapDateTime(json, r'started', ''),
      up: mapValueOfType<String>(json, r'up'),
    );
  }

  static List<Ready>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Ready.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Ready>[];

  static Map<String, Ready?> mapFromJson(dynamic json) {
    final map = <String, Ready?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Ready.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Ready-objects as value to a dart map
  static Map<String, List<Ready?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Ready?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Ready.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
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

  static ReadyStatusEnum? fromJson(dynamic value) =>
      ReadyStatusEnumTypeTransformer().decode(value);

  static List<ReadyStatusEnum?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(ReadyStatusEnum.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <ReadyStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [ReadyStatusEnum] to String,
/// and [decode] dynamic data back to [ReadyStatusEnum].
class ReadyStatusEnumTypeTransformer {
  factory ReadyStatusEnumTypeTransformer() =>
      _instance ??= const ReadyStatusEnumTypeTransformer._();

  const ReadyStatusEnumTypeTransformer._();

  String encode(ReadyStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReadyStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReadyStatusEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'ready':
          return ReadyStatusEnum.ready;
        default:
          return ReadyStatusEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [ReadyStatusEnumTypeTransformer] instance.
  static ReadyStatusEnumTypeTransformer? _instance;
}
