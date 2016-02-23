FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

RUN dnf -y install httpd; dnf clean all

COPY httpd.conf /etc/httpd/conf/

COPY index.html /var/www/html/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
