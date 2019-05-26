FROM fedora

WORKDIR /build
COPY . .

RUN dnf -y update && \
  dnf -y --allowerasing install \
    libguestfs-tools-c \
    podman
RUN alias docker=podman
