#!/bin/bash
# Copyright (c) 2021 Red Hat, Inc.
# Copyright Contributors to the Open Cluster Management project

set -e

make docker-binary

git config --global url."https://$GITHUB_TOKEN@github.com/stolostorn".insteadOf  "https://github.com/stolostorn"

echo "Building grafana-dashboard-loader image"
export DOCKER_IMAGE_AND_TAG=${1}
export DOCKER_FILE=Dockerfile
make docker/build