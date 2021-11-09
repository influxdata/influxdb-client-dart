//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class OnboardingRequest {
  /// Returns a new [OnboardingRequest] instance.
  OnboardingRequest({
    required this.username,
    this.password,
    required this.org,
    required this.bucket,
    this.retentionPeriodSeconds,
    this.retentionPeriodHrs,
    this.token,
  });

  String? username;

  String? password;

  String? org;

  String? bucket;

  int? retentionPeriodSeconds;

  /// Retention period *in nanoseconds* for the new bucket. This key's name has been misleading since OSS 2.0 GA, please transition to use `retentionPeriodSeconds`
  int? retentionPeriodHrs;

  /// Authentication token to set on the initial user. If not specified, the server will generate a token.
  String? token;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OnboardingRequest &&
          other.username == username &&
          other.password == password &&
          other.org == org &&
          other.bucket == bucket &&
          other.retentionPeriodSeconds == retentionPeriodSeconds &&
          other.retentionPeriodHrs == retentionPeriodHrs &&
          other.token == token;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (username == null ? 0 : username.hashCode) +
      (password == null ? 0 : password.hashCode) +
      (org == null ? 0 : org.hashCode) +
      (bucket == null ? 0 : bucket.hashCode) +
      (retentionPeriodSeconds == null ? 0 : retentionPeriodSeconds.hashCode) +
      (retentionPeriodHrs == null ? 0 : retentionPeriodHrs.hashCode) +
      (token == null ? 0 : token.hashCode);

  @override
  String toString() =>
      'OnboardingRequest[username=$username, password=$password, org=$org, bucket=$bucket, retentionPeriodSeconds=$retentionPeriodSeconds, retentionPeriodHrs=$retentionPeriodHrs, token=$token]';

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

  /// Returns a new [OnboardingRequest] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static OnboardingRequest fromJson(dynamic value) {
    final json = value.cast<String, dynamic>();
    return OnboardingRequest(
      username: mapValueOfType<String>(json, r'username'),
      password: mapValueOfType<String>(json, r'password'),
      org: mapValueOfType<String>(json, r'org'),
      bucket: mapValueOfType<String>(json, r'bucket'),
      retentionPeriodSeconds:
          mapValueOfType<int>(json, r'retentionPeriodSeconds'),
      retentionPeriodHrs: mapValueOfType<int>(json, r'retentionPeriodHrs'),
      token: mapValueOfType<String>(json, r'token'),
    );
  }

  static List<OnboardingRequest>? listFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) =>
      json is List && json.isNotEmpty
          ? json
              .map(OnboardingRequest.fromJson)
              .toList(growable: true == growable)
          : true == emptyIsNull
              ? null
              : <OnboardingRequest>[];

  static Map<String, OnboardingRequest?> mapFromJson(dynamic json) {
    final map = <String, OnboardingRequest?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach(
          (key, dynamic value) => map[key] = OnboardingRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OnboardingRequest-objects as value to a dart map
  static Map<String, List<OnboardingRequest?>?> mapListFromJson(
    dynamic json, {
    bool? emptyIsNull,
    bool? growable,
  }) {
    final map = <String, List<OnboardingRequest?>?>{};
    if (json is Map && json.isNotEmpty) {
      json.cast<String, dynamic>().forEach((key, dynamic value) {
        map[key] = OnboardingRequest.listFromJson(
          value,
          emptyIsNull: emptyIsNull,
          growable: growable,
        );
      });
    }
    return map;
  }
}
