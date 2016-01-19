#DISCARD

El servidor escolta connexions entrants pel port 9.
Quan s'estableix la connexió, el servidor rep la informació pero no respon i
queda a l'espera de nova informació o connexions.


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

<pre>$ ncat -t "ip" 9</pre>


