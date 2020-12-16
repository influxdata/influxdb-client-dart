//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class HealthCheck {
  /// Returns a new [HealthCheck] instance.
  HealthCheck({
    @required this.name,
    this.message,
    this.checks = const [],
    @required this.status,
    this.version,
    this.commit,
  });

  
  String name;

  
  String message;

  
  List<HealthCheck> checks;

  
  HealthCheckStatusEnum status;

  
  String version;

  
  String commit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HealthCheck &&
     other.name == name &&
     other.message == message &&
     other.checks == checks &&
     other.status == status &&
     other.version == version &&
     other.commit == commit;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (checks == null ? 0 : checks.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (commit == null ? 0 : commit.hashCode);

  @override
  String toString() => 'HealthCheck[name=$name, message=$message, checks=$checks, status=$status, version=$version, commit=$commit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (checks != null) {
      json[r'checks'] = checks;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (commit != null) {
      json[r'commit'] = commit;
    }
    return json;
  }

  /// Returns a new [HealthCheck] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static HealthCheck fromJson(Map<String, dynamic> json) => json == null
    ? null
    : HealthCheck(
        name: json[r'name'],
        message: json[r'message'],
        checks: HealthCheck.listFromJson(json[r'checks']),
        status: HealthCheckStatusEnum.fromJson(json[r'status']),
        version: json[r'version'],
        commit: json[r'commit'],
    );

  static List<HealthCheck> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <HealthCheck>[]
      : json.map((v) => HealthCheck.fromJson(v)).toList(growable: true == growable);

  static Map<String, HealthCheck> mapFromJson(Map<String, dynamic> json) {
    final map = <String, HealthCheck>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = HealthCheck.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of HealthCheck-objects as value to a dart map
  static Map<String, List<HealthCheck>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<HealthCheck>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = HealthCheck.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class HealthCheckStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const HealthCheckStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is HealthCheckStatusEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const pass = HealthCheckStatusEnum._(r'pass');
  static const fail = HealthCheckStatusEnum._(r'fail');

  /// List of all possible values in this [enum][HealthCheckStatusEnum].
  static const values = <HealthCheckStatusEnum>[
    pass,
    fail,
  ];

  static HealthCheckStatusEnum fromJson(dynamic value) =>
    HealthCheckStatusEnumTypeTransformer().decode(value);

  static List<HealthCheckStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <HealthCheckStatusEnum>[]
      : json
          .map((value) => HealthCheckStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [HealthCheckStatusEnum] to String,
/// and [decode] dynamic data back to [HealthCheckStatusEnum].
class HealthCheckStatusEnumTypeTransformer {
  const HealthCheckStatusEnumTypeTransformer._();

  factory HealthCheckStatusEnumTypeTransformer() => _instance ??= HealthCheckStatusEnumTypeTransformer._();

  String encode(HealthCheckStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HealthCheckStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HealthCheckStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'pass': return HealthCheckStatusEnum.pass;
      case r'fail': return HealthCheckStatusEnum.fail;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [HealthCheckStatusEnumTypeTransformer] instance.
  static HealthCheckStatusEnumTypeTransformer _instance;
}

