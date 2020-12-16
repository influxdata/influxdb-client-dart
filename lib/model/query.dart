//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class Query {
  /// Returns a new [Query] instance.
  Query({
    @required this.query,
    this.type,
    this.dialect,
    this.now,
  });

  


  /// Query script to execute.
  String query;

  /// The type of query. Must be \"flux\".
  QueryTypeEnum type;

  
  Dialect dialect;

  /// Specifies the time that should be reported as \"now\" in the query. Default is the server's now time.
  DateTime now;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Query &&
     other.query == query &&
     other.type == type &&
     other.dialect == dialect &&
     other.now == now;

  @override
  int get hashCode =>
    (query == null ? 0 : query.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (dialect == null ? 0 : dialect.hashCode) +
    (now == null ? 0 : now.hashCode);

  @override
  String toString() => 'Query[query=$query, type=$type, dialect=$dialect, now=$now]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (query != null) {
      json[r'query'] = query;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (dialect != null) {
      json[r'dialect'] = dialect;
    }
    if (now != null) {
      json[r'now'] = now.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [Query] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Query fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Query(
        query: json[r'query'],
        type: QueryTypeEnum.fromJson(json[r'type']),
        dialect: Dialect.fromJson(json[r'dialect']),
        now: json[r'now'] == null
          ? null
          : DateTime.parse(json[r'now']),
    );

  static List<Query> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Query>[]
      : json.map((v) => Query.fromJson(v)).toList(growable: true == growable);

  static Map<String, Query> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Query>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Query.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Query-objects as value to a dart map
  static Map<String, List<Query>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Query>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Query.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// The type of query. Must be \"flux\".
class QueryTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const QueryTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is QueryTypeEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const flux = QueryTypeEnum._(r'flux');

  /// List of all possible values in this [enum][QueryTypeEnum].
  static const values = <QueryTypeEnum>[
    flux,
  ];

  static QueryTypeEnum fromJson(dynamic value) =>
    QueryTypeEnumTypeTransformer().decode(value);

  static List<QueryTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <QueryTypeEnum>[]
      : json
          .map((value) => QueryTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [QueryTypeEnum] to String,
/// and [decode] dynamic data back to [QueryTypeEnum].
class QueryTypeEnumTypeTransformer {
  const QueryTypeEnumTypeTransformer._();

  factory QueryTypeEnumTypeTransformer() => _instance ??= QueryTypeEnumTypeTransformer._();

  String encode(QueryTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a QueryTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  QueryTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'flux': return QueryTypeEnum.flux;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [QueryTypeEnumTypeTransformer] instance.
  static QueryTypeEnumTypeTransformer _instance;
}

