#!/usr/bin/env bash

SCRIPT_PATH="$( cd "$(dirname "$0")" || exit ; pwd -P )"

rm -rf "${SCRIPT_PATH}"/generated

# Download and merge OSS and Cloud definition
rm -rf "${SCRIPT_PATH}"/oss.yml || true
rm -rf "${SCRIPT_PATH}"/cloud.yml || true
rm -rf "${SCRIPT_PATH}"/influxdb-clients-apigen || true
wget https://raw.githubusercontent.com/influxdata/openapi/master/contracts/oss.yml -O "${SCRIPT_PATH}/oss.yml"
wget https://raw.githubusercontent.com/influxdata/openapi/master/contracts/cloud.yml -O "${SCRIPT_PATH}/cloud.yml"
git clone --single-branch --branch master https://github.com/bonitoo-io/influxdb-clients-apigen "${SCRIPT_PATH}/influxdb-clients-apigen"
mvn -f "$SCRIPT_PATH"/influxdb-clients-apigen/openapi-generator/pom.xml compile exec:java -Dexec.mainClass="com.influxdb.AppendCloudDefinitions" -Dexec.args="$SCRIPT_PATH/oss.yml $SCRIPT_PATH/cloud.yml"

# Generate client
cd "${SCRIPT_PATH}"/ || exit
mvn -U -Dskip-validate-spec org.openapitools:openapi-generator-maven-plugin:generate

#### sync generated dart files to src
mkdir -p "${SCRIPT_PATH}"/../lib/model || true
mkdir -p "${SCRIPT_PATH}"/../lib/auth || true
mkdir -p "${SCRIPT_PATH}"/../lib/api || true

## delete old sources
#rm -rf "${SCRIPT_PATH}"/../lib/model/*.dart || true
#rm -rf "${SCRIPT_PATH}"/../lib/auth/*.dart || true
#rm -rf "${SCRIPT_PATH}"/../lib/api/*.dart || true

SRC="${SCRIPT_PATH}/generated/lib"
OUT="${SCRIPT_PATH}/../lib"


cp -r ${SRC}/api_exception.dart $OUT
### needs manual modification
#cp -r ${SRC}/api_helper.dart $OUT
#cp -r ${SRC}/api_client.dart $OUT

cp -r ${SRC}/api/authorizations_api.dart $OUT/api
cp -r ${SRC}/api/buckets_api.dart $OUT/api
cp -r ${SRC}/api/delete_api.dart $OUT/api
cp -r ${SRC}/api/health_api.dart $OUT/api
cp -r ${SRC}/api/labels_api.dart $OUT/api
cp -r ${SRC}/api/organizations_api.dart $OUT/api
cp -r ${SRC}/api/ready_api.dart $OUT/api
cp -r ${SRC}/api/tasks_api.dart $OUT/api
cp -r ${SRC}/api/users_api.dart $OUT/api
cp -r ${SRC}/api/secrets_api.dart $OUT/api
cp -r ${SRC}/api/variables_api.dart $OUT/api
cp -r ${SRC}/api/dbrps_api.dart $OUT/api
cp -r ${SRC}/api/setup_api.dart $OUT/api
cp -r ${SRC}/api/write_api.dart $OUT/api
cp -r ${SRC}/api/ping_api.dart $OUT/api

### needs manual modification
#cp -r ${SRC}/api/query_api.dart $OUT/api

## copy models
cp -r ${SRC}/model/bucket.dart $OUT/model
cp -r ${SRC}/model/schema_type.dart $OUT/model
cp -r ${SRC}/model/patch_bucket_request.dart $OUT/model
cp -r ${SRC}/model/post_organization_request.dart $OUT/model
cp -r ${SRC}/model/patch_organization_request.dart $OUT/model
cp -r ${SRC}/model/patch_retention_rule.dart $OUT/model
cp -r ${SRC}/model/bucket_links.dart $OUT/model
cp -r ${SRC}/model/buckets.dart $OUT/model
cp -r ${SRC}/model/post_bucket_request.dart $OUT/model
cp -r ${SRC}/model/authorization.dart $OUT/model
cp -r ${SRC}/model/authorization_all*.dart $OUT/model
cp -r ${SRC}/model/authorization_update_request.dart $OUT/model
cp -r ${SRC}/model/authorization_post_request.dart $OUT/model
cp -r ${SRC}/model/permission*.dart $OUT/model
cp -r ${SRC}/model/user*.dart $OUT/model
cp -r ${SRC}/model/resource_*.dart $OUT/model
cp -r ${SRC}/model/resource.dart $OUT/model
cp -r ${SRC}/model/ready.dart $OUT/model
cp -r ${SRC}/model/dbrp*.dart $OUT/model
cp -r ${SRC}/model/variable.dart $OUT/model
cp -r ${SRC}/model/variable_links.dart $OUT/model
cp -r ${SRC}/model/variable_properties.dart $OUT/model
cp -r ${SRC}/model/variables.dart $OUT/model
cp -r ${SRC}/model/is_onboarding.dart $OUT/model
cp -r ${SRC}/model/onboarding_request.dart $OUT/model
cp -r ${SRC}/model/onboarding_response.dart $OUT/model
cp -r ${SRC}/model/write_precision.dart $OUT/model
cp -r ${SRC}/model/task*.dart $OUT/model
cp -r ${SRC}/model/secret*.dart $OUT/model
cp -r ${SRC}/model/run*.dart $OUT/model
cp -r ${SRC}/model/retention_rule.dart $OUT/model

## need to manualy fix extern File
#cp -r ${SRC}/model/query.dart $OUT/model

cp -r ${SRC}/model/add_resource_member_request_body.dart $OUT/model
cp -r ${SRC}/model/delete_predicate_request.dart $OUT/model

## needs modification
#cp -r ${SRC}/model/dialect.dart $OUT/model

cp -r ${SRC}/model/health_check.dart $OUT/model
cp -r ${SRC}/model/label.dart $OUT/model
cp -r ${SRC}/model/label_create_request.dart $OUT/model
cp -r ${SRC}/model/label_mapping.dart $OUT/model
cp -r ${SRC}/model/label_response.dart $OUT/model
cp -r ${SRC}/model/label_update.dart $OUT/model
cp -r ${SRC}/model/labels_response.dart $OUT/model
cp -r ${SRC}/model/links.dart $OUT/model
cp -r ${SRC}/model/log_event.dart $OUT/model
cp -r ${SRC}/model/logs.dart $OUT/model
cp -r ${SRC}/model/organization.dart $OUT/model
cp -r ${SRC}/model/organization_links.dart $OUT/model
cp -r ${SRC}/model/organizations.dart $OUT/model
cp -r ${SRC}/model/password_reset_body.dart $OUT/model

cp -r ${SRC}/auth/*.dart $OUT/auth

dart format "${SCRIPT_PATH}/.."
