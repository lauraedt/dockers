FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

RUN dnf -y install python; dnf clean all

COPY echo_udp.py echo_udp.py

ENTRYPOINT ["./echo_udp.py"]

EXPOSE 7
