//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class VariableLinks {
  /// Returns a new [VariableLinks] instance.
  VariableLinks({
    this.self,
    this.org,
    this.labels,
  });

  String? self;

  String? org;

  String? labels;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VariableLinks &&
          other.self == self &&
          other.org == org &&
          other.labels == labels;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (self == null ? 0 : self.hashCode) +
      (org == null ? 0 : org.hashCode) +
      (labels == null ? 0 : labels.hashCode);

  @override
  String toString() => 'VariableLinks[self=$self, org=$org, labels=$labels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (org != null) {
      json[r'org'] = org;
    }
    if (labels != null) {
      json[r'labels'] = labels;
    }
    return json;
  }

  /// Returns a new [VariableLinks] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static VariableLinks fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return VariableLinks(
      self: mapValueOfType<String>(json, r'self'),
      org: mapValueOfType<String>(json, r'org'),
      labels: mapValueOfType<String>(json, r'labels'),
    );
  }

  static List<VariableLinks>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json.map(VariableLinks.fromJson).toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <VariableLinks>[];

  static Map<String, VariableLinks?> mapFromJson(dynamic json) {
    final map = <String, VariableLinks?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = VariableLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VariableLinks-objects as value to a dart map
  static Map<String, List<VariableLinks?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<VariableLinks?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = VariableLinks.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
