FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

RUN dnf -y install python; dnf clean all

ADD echo_udp.py echo_udp.py

RUN chmod +x echo_udp.py

CMD ["./echo_udp.py"]

EXPOSE 7
