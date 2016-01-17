#DAYTIME

El servidor escolta pel port 13 connexions entrants i retorna una cadena de caracters ASCII de la data y hora actual en format:
DIA_SETMANA MES DIA HH:MM:SS ANY
El client pot tancar o no la connexió amb el servidor.
El servidor queda a l'espera de més connexions.



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

$ ncat -u "ip" 13

