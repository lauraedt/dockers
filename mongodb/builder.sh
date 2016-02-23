#!/bin/sh
#usage ./builder.sh
#script de creacio de contenidors docker


############ VARIABLES ############

IMAGE="mongodb_img"
CONTAINER="mongodb_cnt"



#### CREACIO DE LA IMATGE BASE ####

docker build --rm -t $IMAGE .
		


###### CREACIO DELS CONTENIDORS #####	

docker stop $CONTAINER &>/dev/null
docker rm $CONTAINER &>/dev/null

docker create --name $CONTAINER -it -p 27017:27017 $IMAGE

exit 0
