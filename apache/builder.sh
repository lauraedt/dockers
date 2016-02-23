#!/bin/sh
#usage ./builder.sh
#script de creacio de contenidors docker


############ VARIABLES ############

IMAGE="http_img"
CONTAINER="http_cnt"



#### CREACIO DE LA IMATGE BASE ####

docker build --rm -t $IMAGE .
		


###### CREACIO DELS CONTENIDORS #####	

docker stop $CONTAINER &>/dev/null
docker rm $CONTAINER &>/dev/null

docker create 												\
				--name $CONTAINER 							\
				--publish 80:80 							\
				$IMAGE 


exit 0
