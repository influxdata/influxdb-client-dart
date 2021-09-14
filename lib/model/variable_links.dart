//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class VariableLinks {
  /// Returns a new [VariableLinks] instance.
  VariableLinks({
    this.self,
    this.org,
    this.labels,
  });

  String self;

  String org;

  String labels;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VariableLinks &&
     other.self == self &&
     other.org == org &&
     other.labels == labels;

  @override
  int get hashCode =>
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

  /// Returns a new [VariableLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static VariableLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : VariableLinks(
        self: json[r'self'],
        org: json[r'org'],
        labels: json[r'labels'],
    );

  static List<VariableLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <VariableLinks>[]
      : json.map((dynamic value) => VariableLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, VariableLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, VariableLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = VariableLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VariableLinks-objects as value to a dart map
  static Map<String, List<VariableLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VariableLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = VariableLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

