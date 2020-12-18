//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class TaskStatusType {
  /// Instantiate a new enum with the provided [value].
  const TaskStatusType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TaskStatusType && other.value == value;

  @override
  int get hashCode => toString().hashCode;

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
    TaskStatusTypeTypeTransformer().decode(value);

  static List<TaskStatusType> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TaskStatusType>[]
      : json
          .map((value) => TaskStatusType.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [TaskStatusType] to String,
/// and [decode] dynamic data back to [TaskStatusType].
class TaskStatusTypeTypeTransformer {
  const TaskStatusTypeTypeTransformer._();

  factory TaskStatusTypeTypeTransformer() => _instance ??= TaskStatusTypeTypeTransformer._();

  String encode(TaskStatusType data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskStatusType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskStatusType decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'active': return TaskStatusType.active;
      case r'inactive': return TaskStatusType.inactive;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [TaskStatusTypeTypeTransformer] instance.
  static TaskStatusTypeTypeTransformer _instance;
}
