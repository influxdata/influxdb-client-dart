//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class HealthCheck {
  /// Returns a new [HealthCheck] instance.
  HealthCheck({
    required this.name,
    this.message,
    this.checks = const [],
    required this.status,
    this.version,
    this.commit,
  });

  String? name;

  String? message;

  List<HealthCheck>? checks;

  HealthCheckStatusEnum? status;

  String? version;

  String? commit;

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
  // ignore: unnecessary_parenthesis
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
      json[r'name'] = name;
    if (message != null) {
      json[r'message'] = message;
    }
    if (checks != null) {
      json[r'checks'] = checks;
    }
      json[r'status'] = status;
    if (version != null) {
      json[r'version'] = version;
    }
    if (commit != null) {
      json[r'commit'] = commit;
    }
    return json;
  }

  /// Returns a new [HealthCheck] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static HealthCheck fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return HealthCheck(
        name: mapValueOfType<String>(json, r'name'),
        message: mapValueOfType<String>(json, r'message'),
        checks: HealthCheck.listFromJson(json[r'checks']),
        status: HealthCheckStatusEnum.fromJson(json[r'status']),
        version: mapValueOfType<String>(json, r'version'),
        commit: mapValueOfType<String>(json, r'commit'),
      );
  }

  static List<HealthCheck>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(HealthCheck.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <HealthCheck>[];

  static Map<String, HealthCheck?> mapFromJson(dynamic json) {
    final map = <String, HealthCheck?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = HealthCheck.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HealthCheck-objects as value to a dart map
  static Map<String, List<HealthCheck?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<HealthCheck?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = HealthCheck.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
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
  String toString() => value;

  String toJson() => value;

  static const pass = HealthCheckStatusEnum._(r'pass');
  static const fail = HealthCheckStatusEnum._(r'fail');

  /// List of all possible values in this [enum][HealthCheckStatusEnum].
  static const values = <HealthCheckStatusEnum>[
    pass,
    fail,
  ];

  static HealthCheckStatusEnum? fromJson(dynamic value) =>
    HealthCheckStatusEnumTypeTransformer().decode(value);

  static List<HealthCheckStatusEnum?>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(HealthCheckStatusEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <HealthCheckStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [HealthCheckStatusEnum] to String,
/// and [decode] dynamic data back to [HealthCheckStatusEnum].
class HealthCheckStatusEnumTypeTransformer {
  factory HealthCheckStatusEnumTypeTransformer() => _instance ??= const HealthCheckStatusEnumTypeTransformer._();

  const HealthCheckStatusEnumTypeTransformer._();

  String encode(HealthCheckStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HealthCheckStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HealthCheckStatusEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'pass': return HealthCheckStatusEnum.pass;
        case r'fail': return HealthCheckStatusEnum.fail;
        default: return HealthCheckStatusEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [HealthCheckStatusEnumTypeTransformer] instance.
  static HealthCheckStatusEnumTypeTransformer? _instance;
}


