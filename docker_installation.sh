#!/bin/sh
# usage ./docker_installation.sh user

#variables
USER=$1

#instalacio
echo "instalant docker..."

yum -y install docker-io
systemctl start docker
systemctl enable docker

#permisos
groupadd docker
usermod -a -G docker $USER
chown $USER:docker /var/run/docker.sock
