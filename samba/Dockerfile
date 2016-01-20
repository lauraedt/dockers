FROM fedora:23

MAINTAINER "Laura Ran" <laura.ran.m@gmail.com>

# instalacio dels paquets necessaris
RUN dnf -y install samba samba-client samba-common; dnf clean all

# copiem larxiu de configuracio al contenidor
ADD smb.conf /etc/samba/smb.conf

# creem els directoris compartits
RUN mkdir -p /documentation/docker
RUN mkdir -p /var/lib/samba/shares/public 

# i fiquem arxius per compartir
ADD docker.odt /documentation/docker/docker.odt
ADD README.md /var/lib/samba/shares/public/README.md

# creacio dels usuaris samba
RUN useradd laura; echo -e "laura\nlaura" | tee - | smbpasswd -s -a laura

# creacio d'un punt de muntatge del contenidor en el host
VOLUME /var/tmp/docker/shared

