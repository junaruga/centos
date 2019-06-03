#!/bin/bash

set -xeu

docker run -t --rm "${DOCKER_REPO}:${VERSION}-iso" yum -y update
