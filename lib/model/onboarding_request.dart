//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class OnboardingRequest {
  /// Returns a new [OnboardingRequest] instance.
  OnboardingRequest({
    @required this.username,
    this.password,
    @required this.org,
    @required this.bucket,
    this.retentionPeriodSeconds,
    this.retentionPeriodHrs,
    this.token,
  });

  String username;

  String password;

  String org;

  String bucket;

  int retentionPeriodSeconds;

  /// Retention period *in nanoseconds* for the new bucket. This key's name has been misleading since OSS 2.0 GA, please transition to use `retentionPeriodSeconds` 
  int retentionPeriodHrs;

  /// Authentication token to set on the initial user. If not specified, the server will generate a token. 
  String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OnboardingRequest &&
     other.username == username &&
     other.password == password &&
     other.org == org &&
     other.bucket == bucket &&
     other.retentionPeriodSeconds == retentionPeriodSeconds &&
     other.retentionPeriodHrs == retentionPeriodHrs &&
     other.token == token;

  @override
  int get hashCode =>
    (username == null ? 0 : username.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (org == null ? 0 : org.hashCode) +
    (bucket == null ? 0 : bucket.hashCode) +
    (retentionPeriodSeconds == null ? 0 : retentionPeriodSeconds.hashCode) +
    (retentionPeriodHrs == null ? 0 : retentionPeriodHrs.hashCode) +
    (token == null ? 0 : token.hashCode);

  @override
  String toString() => 'OnboardingRequest[username=$username, password=$password, org=$org, bucket=$bucket, retentionPeriodSeconds=$retentionPeriodSeconds, retentionPeriodHrs=$retentionPeriodHrs, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = username;
    if (password != null) {
      json[r'password'] = password;
    }
      json[r'org'] = org;
      json[r'bucket'] = bucket;
    if (retentionPeriodSeconds != null) {
      json[r'retentionPeriodSeconds'] = retentionPeriodSeconds;
    }
    if (retentionPeriodHrs != null) {
      json[r'retentionPeriodHrs'] = retentionPeriodHrs;
    }
    if (token != null) {
      json[r'token'] = token;
    }
    return json;
  }

  /// Returns a new [OnboardingRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OnboardingRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OnboardingRequest(
        username: json[r'username'],
        password: json[r'password'],
        org: json[r'org'],
        bucket: json[r'bucket'],
        retentionPeriodSeconds: json[r'retentionPeriodSeconds'],
        retentionPeriodHrs: json[r'retentionPeriodHrs'],
        token: json[r'token'],
    );

  static List<OnboardingRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OnboardingRequest>[]
      : json.map((v) => OnboardingRequest.fromJson(v)).toList(growable: true == growable);

  static Map<String, OnboardingRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OnboardingRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OnboardingRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OnboardingRequest-objects as value to a dart map
  static Map<String, List<OnboardingRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OnboardingRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OnboardingRequest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

