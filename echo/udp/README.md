#ECHO

El servidor escolta pel port 7 les connexions entrants i envia la mateixa cadena de
caracters que el client li ha enviat.
El servidor queda a l'espera d'altres connexions o altres peticions del client ja 
connectat.


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

<pre>$ ncat -u "ip" 7</pre>

