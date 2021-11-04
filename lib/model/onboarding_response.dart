//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class OnboardingResponse {
  /// Returns a new [OnboardingResponse] instance.
  OnboardingResponse({
    this.user,
    this.org,
    this.bucket,
    this.auth,
  });

  UserResponse? user;

  Organization? org;

  Bucket? bucket;

  Authorization? auth;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OnboardingResponse &&
     other.user == user &&
     other.org == org &&
     other.bucket == bucket &&
     other.auth == auth;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (user == null ? 0 : user.hashCode) +
    (org == null ? 0 : org.hashCode) +
    (bucket == null ? 0 : bucket.hashCode) +
    (auth == null ? 0 : auth.hashCode);

  @override
  String toString() => 'OnboardingResponse[user=$user, org=$org, bucket=$bucket, auth=$auth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (user != null) {
      json[r'user'] = user;
    }
    if (org != null) {
      json[r'org'] = org;
    }
    if (bucket != null) {
      json[r'bucket'] = bucket;
    }
    if (auth != null) {
      json[r'auth'] = auth;
    }
    return json;
  }

  /// Returns a new [OnboardingResponse] instance and imports
  // ignore: prefer_constructors_over_static_methods
  static OnboardingResponse fromJson(dynamic value) {
      final json = value.cast<String, dynamic>();
      return OnboardingResponse(
        user: json[r'user'] == null ? null : UserResponse.fromJson(json[r'user']),
        org: json[r'org'] == null ? null : Organization.fromJson(json[r'org']),
        bucket: json[r'bucket'] == null ? null : Bucket.fromJson(json[r'bucket']),
        auth: json[r'auth'] == null ? null : Authorization.fromJson(json[r'auth']),
      );
  }

  static List<OnboardingResponse>? listFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OnboardingResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OnboardingResponse>[];

  static Map<String, OnboardingResponse?> mapFromJson(dynamic json) {
    final map = <String, OnboardingResponse?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OnboardingResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OnboardingResponse-objects as value to a dart map
  static Map<String, List<OnboardingResponse?>?> mapListFromJson(dynamic json, {bool? emptyIsNull, bool? growable,}) {
    final map = <String, List<OnboardingResponse?>?>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OnboardingResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

