#TIME
El servidor escolta pel port 37 les connexions entrants. Quan la conexió s'estableix
envia un número binari de 32 bits (segons que han transcorregut des de les 00:00 de 
l'1 de gener de 1970 (GTM) i queda a l'espera de rebre més connexions.


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

<pre>$ ncat -t --recv-only "ip" 37</pre>

(--recv-only El servidor tancarà la connexió automàticament un cop resolta la petició)

