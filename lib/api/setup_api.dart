//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of influxdb_client_api;


class SetupApi {
  SetupApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> getSetupWithHttpInfo({ String? zapTraceSpan }) async {
    final path = r'/setup';

    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['BasicAuthentication', 'QuerystringAuthentication', 'TokenAuthentication'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<IsOnboarding> getSetup({ String? zapTraceSpan }) async {
    final response = await getSetupWithHttpInfo( zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IsOnboarding',) as IsOnboarding;
        }
    return Future<IsOnboarding>.value(null);
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
  Future<Response> postSetupWithHttpInfo(OnboardingRequest onboardingRequest, { String? zapTraceSpan }) async {
    final path = r'/setup';

    Object postBody = onboardingRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (zapTraceSpan != null) {
      headerParams[r'Zap-Trace-Span'] = parameterToString(zapTraceSpan);
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['BasicAuthentication', 'QuerystringAuthentication', 'TokenAuthentication'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<OnboardingResponse> postSetup(OnboardingRequest onboardingRequest, { String? zapTraceSpan }) async {
    final response = await postSetupWithHttpInfo(onboardingRequest,  zapTraceSpan: zapTraceSpan );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OnboardingResponse',) as OnboardingResponse;
        }
    return Future<OnboardingResponse>.value(null);
  }
}
