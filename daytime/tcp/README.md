################### DAYTIME ###################

El servidor escolta pel port 13 connexions entrants i retorna una cadena de caracters ASCII de la data y hora actual en format:
DIA_SETMANA MES DIA HH:MM:SS ANY
El servidor tanca la comunicació amb el client i queda a l'espera.



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
$ ncat -t "ip" 13

