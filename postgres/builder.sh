#!/bin/sh
#usage ./builder.sh
#script de creacio de contenidors docker


############ VARIABLES ############

IMAGE="postgres_img"
CONTAINER="postgres_cnt"



#### CREACIO DE LA IMATGE BASE ####

docker build --rm -t $IMAGE .
		


###### CREACIO DELS CONTENIDORS #####	

docker stop $CONTAINER &>/dev/null
docker rm $CONTAINER &>/dev/null


docker create 														\
				--name $CONTAINER 									\
				--publish 5432:5432									\
				--volume /docker/postgresdb:/var/lib/pgsql/data/	\
				$IMAGE 

exit 0
