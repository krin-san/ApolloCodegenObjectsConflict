#!/bin/sh
set -euo pipefail

cd $(dirname $0)
./apollo-ios-cli generate --path Sources/ApolloCodegenObjectsConflict/apollo-codegen-config.json --verbose
