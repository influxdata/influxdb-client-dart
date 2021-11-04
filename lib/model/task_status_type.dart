//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class TaskStatusType {
  /// Instantiate a new enum with the provided [value].
  const TaskStatusType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = TaskStatusType._(r'active');
  static const inactive = TaskStatusType._(r'inactive');

  /// List of all possible values in this [enum][TaskStatusType].
  static const values = <TaskStatusType>[
    active,
    inactive,
  ];

  static TaskStatusType fromJson(dynamic value) =>
    TaskStatusTypeTypeTransformer().decode(value)!;

  static List<TaskStatusType>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TaskStatusType.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TaskStatusType>[];
}

/// Transformation class that can [encode] an instance of [TaskStatusType] to String,
/// and [decode] dynamic data back to [TaskStatusType].
class TaskStatusTypeTypeTransformer {
  factory TaskStatusTypeTypeTransformer() => _instance ??= const TaskStatusTypeTypeTransformer._();

  const TaskStatusTypeTypeTransformer._();

  String encode(TaskStatusType data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskStatusType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskStatusType? decode(dynamic data) {
    if (data != null) {
      switch (data.toString()) {
        case r'active': return TaskStatusType.active;
        case r'inactive': return TaskStatusType.inactive;
        default: return TaskStatusType._(data.toString());
      }
    }
    return null;
  }

  /// Singleton [TaskStatusTypeTypeTransformer] instance.
  static TaskStatusTypeTypeTransformer? _instance;
}

