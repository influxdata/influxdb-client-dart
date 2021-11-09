//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Run {
  /// Returns a new [Run] instance.
  Run({
    this.id,
    this.taskID,
    this.status,
    this.scheduledFor,
    this.log = const [],
    this.startedAt,
    this.finishedAt,
    this.requestedAt,
    this.links,
  });

  String? id;

  String? taskID;

  RunStatusEnum? status;

  /// Time used for run's \"now\" option, RFC3339.
  DateTime? scheduledFor;

  /// An array of logs associated with the run.
  List<LogEvent>? log;

  /// Time run started executing, RFC3339Nano.
  DateTime? startedAt;

  /// Time run finished executing, RFC3339Nano.
  DateTime? finishedAt;

  /// Time run was manually requested, RFC3339Nano.
  DateTime? requestedAt;

  RunLinks? links;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Run &&
          other.id == id &&
          other.taskID == taskID &&
          other.status == status &&
          other.scheduledFor == scheduledFor &&
          other.log == log &&
          other.startedAt == startedAt &&
          other.finishedAt == finishedAt &&
          other.requestedAt == requestedAt &&
          other.links == links;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id.hashCode) +
      (taskID == null ? 0 : taskID.hashCode) +
      (status == null ? 0 : status.hashCode) +
      (scheduledFor == null ? 0 : scheduledFor.hashCode) +
      (log == null ? 0 : log.hashCode) +
      (startedAt == null ? 0 : startedAt.hashCode) +
      (finishedAt == null ? 0 : finishedAt.hashCode) +
      (requestedAt == null ? 0 : requestedAt.hashCode) +
      (links == null ? 0 : links.hashCode);

  @override
  String toString() =>
      'Run[id=$id, taskID=$taskID, status=$status, scheduledFor=$scheduledFor, log=$log, startedAt=$startedAt, finishedAt=$finishedAt, requestedAt=$requestedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (taskID != null) {
      json[r'taskID'] = taskID;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (scheduledFor != null) {
      json[r'scheduledFor'] = scheduledFor!.toUtc().toIso8601String();
    }
    if (log != null) {
      json[r'log'] = log;
    }
    if (startedAt != null) {
      json[r'startedAt'] = startedAt!.toUtc().toIso8601String();
    }
    if (finishedAt != null) {
      json[r'finishedAt'] = finishedAt!.toUtc().toIso8601String();
    }
    if (requestedAt != null) {
      json[r'requestedAt'] = requestedAt!.toUtc().toIso8601String();
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  /// Returns a new [Run] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static Run fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return Run(
      id: mapValueOfType<String>(json, r'id'),
      taskID: mapValueOfType<String>(json, r'taskID'),
      status: RunStatusEnum.fromJson(json[r'status']),
      scheduledFor: mapDateTime(json, r'scheduledFor', ''),
      log: LogEvent.listFromJson(json[r'log']),
      startedAt: mapDateTime(json, r'startedAt', ''),
      finishedAt: mapDateTime(json, r'finishedAt', ''),
      requestedAt: mapDateTime(json, r'requestedAt', ''),
      links: json[r'links'] == null ? null : RunLinks.fromJson(json[r'links']),
    );
  }

  static List<Run>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(Run.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <Run>[];

  static Map<String, Run?> mapFromJson(dynamic json) {
    final map = <String, Run?>{};
    if (json is Map && json.isNotEmpty) {
      json
          .cast<String, dynamic>()
          .forEach((key, dynamic value) => map[key] = Run.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Run-objects as value to a dart map
  static Map<String, List<Run?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<Run?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = Run.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}

class RunStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const RunStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const scheduled = RunStatusEnum._(r'scheduled');
  static const started = RunStatusEnum._(r'started');
  static const failed = RunStatusEnum._(r'failed');
  static const success = RunStatusEnum._(r'success');
  static const canceled = RunStatusEnum._(r'canceled');

  /// List of all possible values in this [enum][RunStatusEnum].
  static const values = <RunStatusEnum>[
    scheduled,
    started,
    failed,
    success,
    canceled,
  ];

  static RunStatusEnum? fromJson(dynamic value) =>
      RunStatusEnumTypeTransformer().decode(value);

  static List<RunStatusEnum?>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(RunStatusEnum.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <RunStatusEnum>[];
}

/// Transformation class that can [encode] an instance of [RunStatusEnum] to String,
/// and [decode] dynamic data back to [RunStatusEnum].
class RunStatusEnumTypeTransformer {
  factory RunStatusEnumTypeTransformer() =>
      _instance ??= const RunStatusEnumTypeTransformer._();

  const RunStatusEnumTypeTransformer._();

  String encode(RunStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RunStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RunStatusEnum? decode(dynamic data, {bool? allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'scheduled':
          return RunStatusEnum.scheduled;
        case r'started':
          return RunStatusEnum.started;
        case r'failed':
          return RunStatusEnum.failed;
        case r'success':
          return RunStatusEnum.success;
        case r'canceled':
          return RunStatusEnum.canceled;
        default:
          return RunStatusEnum._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [RunStatusEnumTypeTransformer] instance.
  static RunStatusEnumTypeTransformer? _instance;
}
