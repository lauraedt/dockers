#!/bin/sh
#usage ./builder.sh
#script de creacio de contenidors docker


############ VARIABLES ############

IMAGE="redis_img"
CONTAINER="redis_cnt"


#### CREACIO DE LA IMATGE BASE ####

docker build --rm -t $IMAGE .
		

###### CREACIO DELS CONTENIDORS #####	

docker stop $CONTAINER &>/dev/null
docker rm $CONTAINER &>/dev/null

docker create --name $CONTAINER -it $IMAGE


### CREACIO DEL CONTENIDOR CLIENT ###

#client 1

CONTAINER_CLIE="redis_client_cnt"

docker stop $CONTAINER_CLIE &>/dev/null
docker rm $CONTAINER_CLIE &>/dev/null

docker start $CONTAINER

docker create 														\
				--name $CONTAINER_CLIE								\
				--publish 6379:6379									\
				--link $CONTAINER:redis								\
				$IMAGE 
				
#client 2

CONTAINER_CLIE2="redis_client2_cnt"

docker stop $CONTAINER_CLIE2 &>/dev/null
docker rm $CONTAINER_CLIE2 &>/dev/null

docker start $CONTAINER

docker create 														\
				--name $CONTAINER_CLIE2								\
				--link $CONTAINER:redis								\
				$IMAGE 


exit 0
