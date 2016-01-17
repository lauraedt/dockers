################### DISCARD ###################

El servidor escucha por el puerto 9 conexiones entrantes. Cuando la conexión se establece, el servidor recibe datagramas del cliente pero no responde y se queda a la espera de recibir más conexiones o datagramas.


############## TUTORIAL D'EXECUCIÓ ###############

#accedir al directori amb el contignut necesari per crear el docker:
$ cd docker/nom_servei/protocol

#executar l'script de creació de la imatge i el container docker:
$ ./builder.sh

#comprovar els dockers instal·lats:
$ docker ps -a	

#arrencar el container:
$ docker start nom_cnt

#testejar el seu funcionament:
#nota: comprovar l'execució desde diferents clients a la vegada
$ ncat -u "ip" 9

#nota: --recv-only El servidor tancarà la connexió automàticament un cop resolta
#la petició.

