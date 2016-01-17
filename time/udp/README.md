#TIME

El servidor escolta pel port 37 les connexions entrants. Quan la conexió s'estableix
envia un número binari de 32 bits (segons que han transcorregut des de les 00:00 de 
l'1 de gener de 1970 (GTM) i queda a l'espera de rebre més connexions.



###TUTORIAL D'EXECUCIÓ

Accedir al directori amb el contignut necesari per crear el docker:
$ cd docker/nom_servei/protocol

Executar l'script de creació de la imatge i el container docker:
$ ./builder.sh

Comprovar els dockers instal·lats:
$ docker ps -a	

Arrencar el container:
$ docker start nom_cnt

Testejar el seu funcionament:
(nota: comprovar l'execució desde diferents clients a la vegada)
$ ncat -u "ip" 37

