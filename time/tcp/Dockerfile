FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

RUN dnf -y install python; dnf clean all

COPY time_tcp.py time_tcp.py

RUN chmod +x time_tcp.py

ENTRYPOINT ["./time_tcp.py"]

EXPOSE 37
