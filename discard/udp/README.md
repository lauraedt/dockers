#DISCARD

El servidor escolta connexions entrants pel port 9.
Quan s'estableix la connexió, el servidor rep la informació pero no respon i
queda a l'espera de nova informació o connexions.


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

$ ncat -u "ip" 9


