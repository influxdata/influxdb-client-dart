//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;

class SetupApi {
  SetupApi(ApiClient apiClient) : apiClient = apiClient;

  final ApiClient apiClient;

  /// Check if database has default user, org, bucket
  ///
  /// Returns `true` if no default user, organization, or bucket has been created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> getSetupWithHttpInfo({
    String? zapTraceSpan,
  }) async {
    final path = r'/setup';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Check if database has default user, org, bucket
  ///
  /// Returns `true` if no default user, organization, or bucket has been created.
  ///
  /// Parameters:
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<IsOnboarding> getSetup({String? zapTraceSpan}) async {
    final response = await getSetupWithHttpInfo(zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'IsOnboarding',
      ) as IsOnboarding;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }

  /// Set up initial user, org and bucket
  ///
  /// Post an onboarding request to set up initial user, org and bucket.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OnboardingRequest] onboardingRequest (required):
  ///   Source to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<Response> postSetupWithHttpInfo(
    OnboardingRequest onboardingRequest, {
    String? zapTraceSpan,
  }) async {
    final path = r'/setup';

    // ignore: prefer_final_locals
    Object? postBody = onboardingRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    const authNames = <String>[
      'BasicAuthentication',
      'QuerystringAuthentication',
      'TokenAuthentication'
    ];
    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Set up initial user, org and bucket
  ///
  /// Post an onboarding request to set up initial user, org and bucket.
  ///
  /// Parameters:
  ///
  /// * [OnboardingRequest] onboardingRequest (required):
  ///   Source to create
  ///
  /// * [String] zapTraceSpan:
  ///   OpenTracing span context
  Future<OnboardingResponse> postSetup(OnboardingRequest onboardingRequest,
      {String? zapTraceSpan}) async {
    final response = await postSetupWithHttpInfo(onboardingRequest,
        zapTraceSpan: zapTraceSpan);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'OnboardingResponse',
      ) as OnboardingResponse;
    }
    throw ApiException(response.statusCode, await _decodeBodyBytes(response));
  }
}
