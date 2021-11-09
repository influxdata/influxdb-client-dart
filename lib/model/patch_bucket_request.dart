//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class PatchBucketRequest {
  /// Returns a new [PatchBucketRequest] instance.
  PatchBucketRequest({
    this.name,
    this.description,
    this.retentionRules = const [],
  });

  String? name;

  String? description;

  /// Updates to rules to expire or retain data. No rules means no updates.
  List<PatchRetentionRule>? retentionRules;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatchBucketRequest &&
          other.name == name &&
          other.description == description &&
          other.retentionRules == retentionRules;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (retentionRules == null ? 0 : retentionRules.hashCode);

  @override
  String toString() =>
      'PatchBucketRequest[name=$name, description=$description, retentionRules=$retentionRules]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (retentionRules != null) {
      json[r'retentionRules'] = retentionRules;
    }
    return json;
  }

  /// Returns a new [PatchBucketRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static PatchBucketRequest fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return PatchBucketRequest(
      name: mapValueOfType<String>(json, r'name'),
      description: mapValueOfType<String>(json, r'description'),
      retentionRules: PatchRetentionRule.listFromJson(json[r'retentionRules']),
    );
  }

  static List<PatchBucketRequest>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(PatchBucketRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <PatchBucketRequest>[];

  static Map<String, PatchBucketRequest?> mapFromJson(dynamic json) {
    final map = <String, PatchBucketRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) =>
          map[key] = PatchBucketRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PatchBucketRequest-objects as value to a dart map
  static Map<String, List<PatchBucketRequest?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<PatchBucketRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = PatchBucketRequest.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
