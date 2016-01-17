#!/bin/sh
#usage ./builder.sh
#script de creacio de contenidors docker


############ VARIABLES ############

IMAGE="discard_udp_img"
CONTAINER="discard_udp_cnt"
PORT=9
PROTOCOL="udp"

#forma rapida de trobar la ip que va canviant en el meu portatil
IP=$(ifconfig | grep -A 1 'wlp3s0' | tail -1 | cut -d' ' -f 10)



#### CREACIO DE LA IMATGE BASE ####

#--rm: 		remove intermediate containers after a successful build
#-t: 		repository name (and optionally a tag) to be applied to the 
#	 		resulting image in case of success


docker build --rm -t $IMAGE .
		


###### CREACIO DEL CONTENIDOR #####	

#--name: 	assign a name to the container
#-i:		keep STDIN open even if not attached. The default is false
#-t:		allocate a pseudo-TTY. The default is false.
#-p:		publish all exposed ports to random ports on  the  host  
#			interfaces. The  default  is false.


#abans de crear un de nou cal asegurar-se que no existeix.
#si existeix s'esborra

docker stop $CONTAINER
docker rm $CONTAINER


#creacio del container

docker create --name $CONTAINER -i -t -p $IP:$PORT:$PORT/$PROTOCOL $IMAGE
		
				

exit 0
