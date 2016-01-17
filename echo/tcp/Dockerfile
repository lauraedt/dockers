FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

RUN dnf -y install python; dnf clean all

COPY echo_tcp.py echo_tcp.py

ENTRYPOINT ["./echo_tcp.py"]

EXPOSE 7
