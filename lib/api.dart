// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

library influxdb_client_api;

import 'dart:async';
import 'dart:convert';
import 'dart:collection';
import 'dart:math' as math;
import 'package:archive/archive.dart';
import 'package:csv/csv.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:universal_io/io.dart';

// generated stuff
part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';

part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/health_api.dart';
part 'api/delete_api.dart';
part 'api/ready_api.dart';
part 'api/secrets_api.dart';
part 'api/ping_api.dart';

// health ready
part 'model/ready.dart';
part 'model/health_check.dart';

// query api
part 'api/query_api.dart';

// write api
part 'api/write_api.dart';
part 'model/write_precision.dart';

part 'model/dialect.dart';
part 'model/query.dart';

// organization api
part 'api/organizations_api.dart';

part 'model/organization.dart';
part 'model/patch_organization_request.dart';
part 'model/post_organization_request.dart';
part 'model/organization_links.dart';
part 'model/organizations.dart';
part 'model/links.dart';
part 'model/resource_member.dart';
part 'model/resource_members.dart';
part 'model/resource_owner.dart';
part 'model/resource_owners.dart';
part 'model/resource_owner_all_of.dart';

part 'model/secret_keys.dart';
part 'model/secret_keys_response.dart';
part 'model/secret_keys_response_all_of.dart';
part 'model/secret_keys_response_all_of_links.dart';
part 'model/add_resource_member_request_body.dart';

// users api
part 'api/users_api.dart';
part 'model/user.dart';
part 'model/user_response.dart';
part 'model/user_response_links.dart';
part 'model/resource_members_links.dart';
part 'model/users.dart';
part 'model/password_reset_body.dart';

//bucket api
part 'api/buckets_api.dart';
part 'model/buckets.dart';
part 'model/bucket.dart';
part 'model/bucket_links.dart';
part 'model/label.dart';
part 'model/schema_type.dart';
part 'model/retention_rule.dart';
part 'model/patch_retention_rule.dart';
part 'model/patch_bucket_request.dart';
part 'model/label_response.dart';
part 'model/label_mapping.dart';
part 'model/labels_response.dart';
part 'model/post_bucket_request.dart';

//authorizations api
part 'api/authorizations_api.dart';
part 'model/authorization.dart';
part 'model/authorization_post_request.dart';
part 'model/authorizations.dart';
part 'model/permission.dart';
part 'model/authorization_all_of.dart';
part 'model/authorization_all_of_links.dart';
part 'model/authorization_update_request.dart';
part 'model/resource.dart';
part 'model/resource_member_all_of.dart';

//task api
part 'api/tasks_api.dart';
part 'model/task.dart';
part 'model/task_create_request.dart';
part 'model/task_links.dart';
part 'model/task_status_type.dart';
part 'model/task_update_request.dart';
part 'model/tasks.dart';
part 'model/run.dart';
part 'model/run_links.dart';
part 'model/run_manually.dart';
part 'model/log_event.dart';
part 'model/logs.dart';
part 'model/runs.dart';

//labels api
part 'api/labels_api.dart';
part 'model/label_update.dart';
part 'model/label_create_request.dart';

//delete api
part 'model/delete_predicate_request.dart';

//variables api
part 'api/variables_api.dart';
part 'model/variable.dart';
part 'model/variables.dart';
part 'model/variable_links.dart';
part 'model/variable_properties.dart';

//dbrp
part 'api/dbrps_api.dart';
part 'model/dbrp.dart';
part 'model/dbrp_create.dart';
part 'model/dbrp_get.dart';
part 'model/dbrp_update.dart';
part 'model/dbrps.dart';

//setup
part 'api/setup_api.dart';
part 'model/is_onboarding.dart';
part 'model/onboarding_request.dart';
part 'model/onboarding_response.dart';

//api stuff
part 'client/influxdb_client.dart';
part 'client/error.dart';
part 'client/options.dart';
part 'client/point.dart';
part 'client/delete_service.dart';
part 'client/write_service.dart';
part 'client/query_service.dart';
part 'client/flux_transformer.dart';
part 'client/flux_table.dart';
part 'client/retry.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
