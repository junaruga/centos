FROM fedora

RUN echo -e "deltarpm=0\ninstall_weak_deps=0\ntsflags=nodocs" >> /etc/dnf/dnf.conf
RUN dnf -y update
RUN dnf -y --allowerasing install \
    libguestfs-tools-c \
    docker \
    podman \
    wget \
    && dnf clean all
