#DAYTIME

El servidor escolta pel port 13 connexions entrants i retorna una cadena de caracters ASCII de la data y hora actual en format:
DIA_SETMANA MES DIA HH:MM:SS ANY
El client pot tancar o no la connexió amb el servidor.
El servidor queda a l'espera de més connexions.


###TUTORIAL D'EXECUCIÓ

Accedir al directori amb el contignut necesari per crear el docker:
<pre>$ cd docker/nom_servei/protocol</pre>

Executar l'script de creació de la imatge i el container docker:

<pre>$ ./builder.sh</pre>

Comprovar els dockers instal·lats:

<pre>$ docker ps -a</pre>	

Arrencar el container:

<pre>$ docker start nom_cnt</pre>

Testejar el seu funcionament:

(nota: comprovar l'execució desde diferents clients a la vegada)

<pre>$ ncat -u "ip" 13</pre>

