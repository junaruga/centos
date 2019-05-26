#!/bin/bash
set -xeo pipefail

docker run --rm --privileged multiarch/qemu-user-static:register
./update.sh "${VERSION}"
docker images
