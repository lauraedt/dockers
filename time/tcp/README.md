################### TIME ###################

El servidor escolta pel port 37 les connexions entrants. Quan la conexió s'estableix
envia un número binari de 32 bits (segons que han transcorregut des de les 00:00 de 
l'1 de gener de 1970 (GTM) i queda a l'espera de rebre més connexions.



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
$ ncat -t --recv-only "ip" 37

#nota: --recv-only El servidor tancarà la connexió automàticament un cop resolta
#la petició.

