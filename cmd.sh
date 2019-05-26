#!/bin/bash
set -xeo pipefail

systemctl start docker
docker run --rm --privileged multiarch/qemu-user-static:register
./update.sh "${VERSION}"
docker images
