#!/bin/bash
set -xeo pipefail

alias docker=podman
docker run --rm --privileged multiarch/qemu-user-static:register
./update.sh "${VERSION}"
docker images
