//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

library influxdb_client_api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:collection';
import 'package:yaml/yaml.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'dart:mirrors';


import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

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
part 'api/ready_api.dart';

// health ready
part 'model/ready.dart';
part 'model/health_check.dart';

// query apu
part 'api/query_api.dart';

part 'model/dialect.dart';
part 'model/query.dart';

// organization api
part 'api/organizations_api.dart';

part 'model/organization.dart';
part 'model/organization_links.dart';
part 'model/organizations.dart';
part 'model/links.dart';
part 'model/resource_member.dart';
part 'model/resource_members.dart';
part 'model/resource_owner.dart';
part 'model/resource_owners.dart';
part 'model/user_links.dart';
part 'model/users_links.dart';
part 'model/secret_keys.dart';
part 'model/secret_keys_response.dart';
part 'model/secret_keys_response_all_of.dart';
part 'model/secret_keys_response_all_of_links.dart';
part 'model/add_resource_member_request_body.dart';

// users api
part 'api/users_api.dart';
part 'model/user.dart';
part 'model/users.dart';
part 'model/password_reset_body.dart';

//api stuff
part 'client/influxdb_client.dart';
part 'client/error.dart';
part 'client/options.dart';
part 'client/point.dart';
part 'client/write_service.dart';
part 'client/query_service.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();