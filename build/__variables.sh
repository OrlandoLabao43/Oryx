#!/bin/bash
set -e

declare -r __REPO_DIR=$( cd $( dirname "$0" ) && cd .. && pwd )

# VSTS environment variables
declare -r BUILD_NUMBER="$BUILD_BUILDNUMBER"
declare -r BUILD_CONFIGURATION="${BUILDCONFIGURATION:-Debug}"

declare -r BUILD_BUILDIMAGES_USING_NOCACHE="$BUILD_BUILDIMAGES_USING_NOCACHE"
declare -r BUILD_RUNTIMEIMAGES_USING_NOCACHE="$BUILD_RUNTIMEIMAGES_USING_NOCACHE"

declare -r BUILD_IMAGES_SRC_DIR="$__REPO_DIR/images/build"
declare -r RUNTIME_IMAGES_SRC_DIR="$__REPO_DIR/images/runtime"
declare -r SOURCES_SRC_DIR="$__REPO_DIR/src"
declare -r TESTS_SRC_DIR="$__REPO_DIR/tests"

declare -r ARTIFACTS_DIR="$__REPO_DIR/artifacts"
declare -r BUILD_IMAGES_ARTIFACTS_FILE="$ARTIFACTS_DIR/images/build-images.txt"
declare -r RUNTIME_IMAGES_ARTIFACTS_FILE="$ARTIFACTS_DIR/images/runtime-images.txt"

declare -r DOCKER_BUILD_IMAGES_REPO="oryxdevms/build"
declare -r DOCKER_RUNTIME_IMAGES_REPO="oryxdevms"