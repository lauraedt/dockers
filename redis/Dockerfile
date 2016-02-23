FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

RUN dnf -y install redis; dnf clean all

EXPOSE 6379

ENTRYPOINT  ["/usr/bin/redis-server"]
