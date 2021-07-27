#!/usr/bin/env bash

SCRIPT_PATH="$( cd "$(dirname "$0")" || exit ; pwd -P )"

#rm -rf "${SCRIPT_PATH}"/generated

# Generate client
cd "${SCRIPT_PATH}"/ || exit
#mvn -U org.openapitools:openapi-generator-maven-plugin:generate

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

echo $SRC
echo $OUT

## copy apis
#cp -r ${SRC}/api_client.dart $OUT/

cp -r ${SRC}/api/authorizations_api.dart $OUT/api
cp -r ${SRC}/api/buckets_api.dart $OUT/api
cp -r ${SRC}/api/delete_api.dart $OUT/api
cp -r ${SRC}/api/default_api.dart $OUT/api
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

## copy models
#cp -r "${SCRIPT_PATH}"/generated/lib/model/*.dart "${SCRIPT_PATH}"/../lib/model
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
cp -r ${SRC}/model/authorization_post_request.dart $OUT/model
cp -r ${SRC}/model/permission*.dart $OUT/model
cp -r ${SRC}/model/user*.dart $OUT/model
cp -r ${SRC}/model/resource_members_links.dart $OUT/model
cp -r ${SRC}/model/dbrp*.dart $OUT/model
cp -r ${SRC}/model/variable*.dart $OUT/model
cp -r ${SRC}/model/is_onboarding.dart $OUT/model
cp -r ${SRC}/model/onboarding_request.dart $OUT/model
cp -r ${SRC}/model/onboarding_response.dart $OUT/model

# copy supporting files
# cp -r "${SCRIPT_PATH}"/generated/lib/*.dart "${SCRIPT_PATH}"/../lib


# rm -rf "${SCRIPT_PATH}"/generated

