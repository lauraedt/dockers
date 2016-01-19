FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

RUN dnf -y install python; dnf clean all

COPY daytime_udp.py daytime_udp.py

RUN chmod +x daytime_udp.py

ENTRYPOINT ["./daytime_udp.py"]

EXPOSE 13
