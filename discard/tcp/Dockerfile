FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

RUN dnf -y install python; dnf clean all

COPY discard_tcp.py discard_tcp.py

ENTRYPOINT ["./discard_tcp.py"]

EXPOSE 9
