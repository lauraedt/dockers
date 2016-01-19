FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

RUN dnf -y install python; dnf clean all

COPY daytime_tcp.py daytime_tcp.py

RUN chmod +x daytime_tcp.py

ENTRYPOINT ["./daytime_tcp.py"]

EXPOSE 13
