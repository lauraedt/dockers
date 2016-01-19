FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

RUN dnf -y install python; dnf clean all

COPY discard_udp.py discard_udp.py

RUN chmod +x discard_udp.py

ENTRYPOINT ["./discard_udp.py"]

EXPOSE 9
