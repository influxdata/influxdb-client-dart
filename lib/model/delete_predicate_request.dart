//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class DeletePredicateRequest {
  /// Returns a new [DeletePredicateRequest] instance.
  DeletePredicateRequest({
    required this.start,
    required this.stop,
    this.predicate,
  });

  /// RFC3339Nano
  DateTime? start;

  /// RFC3339Nano
  DateTime? stop;

  /// InfluxQL-like delete statement
  String? predicate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeletePredicateRequest &&
     other.start == start &&
     other.stop == stop &&
     other.predicate == predicate;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (start == null ? 0 : start.hashCode) +
    (stop == null ? 0 : stop.hashCode) +
    (predicate == null ? 0 : predicate.hashCode);

  @override
  String toString() => 'DeletePredicateRequest[start=$start, stop=$stop, predicate=$predicate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'start'] = start!.toUtc().toIso8601String();
      json[r'stop'] = stop!.toUtc().toIso8601String();
    if (predicate != null) {
      json[r'predicate'] = predicate;
    }
    return json;
  }

  /// Returns a new [DeletePredicateRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static DeletePredicateRequest fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return DeletePredicateRequest(
        start: mapDateTime(json, r'start', ''),
        stop: mapDateTime(json, r'stop', ''),
        predicate: mapValueOfType<String>(json, r'predicate'),
      );
  }

  static List<DeletePredicateRequest>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(DeletePredicateRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <DeletePredicateRequest>[];

  static Map<String, DeletePredicateRequest?> mapFromJson(dynamic json) {
    final map = <String, DeletePredicateRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = DeletePredicateRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeletePredicateRequest-objects as value to a dart map
  static Map<String, List<DeletePredicateRequest?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<DeletePredicateRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = DeletePredicateRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

