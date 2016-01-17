FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

RUN dnf -y install python; dnf clean all

COPY time_udp.py time_udp.py

ENTRYPOINT ["./time_udp.py"]

EXPOSE 37
