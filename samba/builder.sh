#!/bin/sh
#usage ./builder.sh
#script de creacio de contenidors docker


############ VARIABLES ############

IMAGE="samba_img"



#### CREACIO DE LA IMATGE BASE ####

#--rm: 		remove intermediate containers after a successful build
#-t: 		repository name (and optionally a tag) to be applied to the 
#	 		resulting image in case of success

docker build --rm -t $IMAGE .
		


###### CREACIO DELS CONTENIDORS #####	

#creacio del container netbios

CONTAINER="nmbd_cnt"

docker stop $CONTAINER &>/dev/null
docker rm $CONTAINER &>/dev/null

docker create 								\
				--name $CONTAINER 			\
				--expose 137-139 			\
				--publish 137-139:137-139 	\
				--entrypoint nmbd 			\
				$IMAGE -F
				
				
#creacio del container samba

CONTAINER="smbd_cnt"

docker stop $CONTAINER &>/dev/null
docker rm $CONTAINER &>/dev/null

docker create 								\
				--name $CONTAINER 			\
				--expose 445 				\
				--publish 445:445 			\
				--entrypoint smbd 			\
				$IMAGE -F
		
		
exit 0
