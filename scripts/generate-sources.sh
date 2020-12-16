#!/usr/bin/env bash

SCRIPT_PATH="$( cd "$(dirname "$0")" || exit ; pwd -P )"

rm -rf "${SCRIPT_PATH}"/generated

# Generate client
cd "${SCRIPT_PATH}"/ || exit
mvn -U org.openapitools:openapi-generator-maven-plugin:generate

#### sync generated dart files to src
#mkdir -p "${SCRIPT_PATH}"/../lib/model || true
#mkdir -p "${SCRIPT_PATH}"/../lib/auth || true
#mkdir -p "${SCRIPT_PATH}"/../lib/api || true

## delete old sources
#rm -rf "${SCRIPT_PATH}"/../lib/model/*.dart || true
#rm -rf "${SCRIPT_PATH}"/../lib/auth/*.dart || true
#rm -rf "${SCRIPT_PATH}"/../lib/api/*.dart || true


## copy apis
#cp -r "${SCRIPT_PATH}"/generated/lib/api/*.dart "${SCRIPT_PATH}"/../lib/api
#cp -r "${SCRIPT_PATH}"/generated/lib/auth/*.dart "${SCRIPT_PATH}"/../lib/auth

## copy models
#cp -r "${SCRIPT_PATH}"/generated/lib/model/*.dart "${SCRIPT_PATH}"/../lib/model

# copy supporting files
#cp -r "${SCRIPT_PATH}"/generated/lib/*.dart "${SCRIPT_PATH}"/../lib


#rm -rf "${SCRIPT_PATH}"/generated