################### ECHO ###################

El servidor escolta pel port 7 les connexions entrants i envia la mateixa cadena de
caracters que el client li ha enviat.
El servidor queda a l'espera d'altres connexions o altres peticions del client ja 
connectat.


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
$ ncat -t "ip" 7
