//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Variable {
  /// Returns a new [Variable] instance.
  Variable({
    this.links,
    this.id,
    @required this.orgID,
    @required this.name,
    this.description,
    this.selected = const [],
    this.labels = const [],
    @required this.arguments,
    this.createdAt,
    this.updatedAt,
  });

  VariableLinks links;

  String id;

  String orgID;

  String name;

  String description;

  List<String> selected;

  List<Label> labels;

  VariableProperties arguments;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Variable &&
     other.links == links &&
     other.id == id &&
     other.orgID == orgID &&
     other.name == name &&
     other.description == description &&
     other.selected == selected &&
     other.labels == labels &&
     other.arguments == arguments &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (links == null ? 0 : links.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (orgID == null ? 0 : orgID.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (selected == null ? 0 : selected.hashCode) +
    (labels == null ? 0 : labels.hashCode) +
    (arguments == null ? 0 : arguments.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'Variable[links=$links, id=$id, orgID=$orgID, name=$name, description=$description, selected=$selected, labels=$labels, arguments=$arguments, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (links != null) {
      json[r'links'] = links;
    }
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'orgID'] = orgID;
      json[r'name'] = name;
    if (description != null) {
      json[r'description'] = description;
    }
    if (selected != null) {
      json[r'selected'] = selected;
    }
    if (labels != null) {
      json[r'labels'] = labels;
    }
      json[r'arguments'] = arguments;
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [Variable] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Variable fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Variable(
        links: VariableLinks.fromJson(json[r'links']),
        id: json[r'id'],
        orgID: json[r'orgID'],
        name: json[r'name'],
        description: json[r'description'],
        selected: json[r'selected'] == null
          ? null
          : (json[r'selected'] as List).cast<String>(),
        labels: Label.listFromJson(json[r'labels']),
        arguments: VariableProperties.fromJson(json[r'arguments']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<Variable> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Variable>[]
      : json.map((v) => Variable.fromJson(v)).toList(growable: true == growable);

  static Map<String, Variable> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Variable>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Variable.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Variable-objects as value to a dart map
  static Map<String, List<Variable>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Variable>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Variable.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

