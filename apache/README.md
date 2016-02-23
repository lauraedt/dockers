#APACHE Web Server

Apache es un servidor web lliure, especialment dissenyat per transferir 
dades de hipertext, és a dir, pàgines web amb tots els seus elements.
Aquest servidor utilitza el protocol http.

El servidor web es troba a l'espera de que algún navegador li faci una petició,
com per exemple, accedir a una pàgina web i respondre a la petició enviant 
codi html mitjançant una transferència de dades en xarxa.


###COM FUNCIONA?
El Dockerfile de apache:  

- sobre la base de fedora 23 instala els paquets necessaris.

- es copia l'arxiu de configuració necessari i una pàgina web

- s'exposa el port corresponent 

L'script *builder.sh*:

- crea un contenidor apache
  
- s'enllacen el port del host amb el del contenidor


###TUTORIAL D'EXECUCIÓ
Accedir al directori amb el contignut necesari per crear el docker:
<pre>$ cd docker/nom_servei</pre>

Executar l'script de creació de la imatge i el container docker:

<pre>$ ./builder.sh</pre>

Arrencar el container

<pre>$ docker start nom_cnt</pre>

Testejar el seu funcionament:
<pre>$ curl http://localhost</pre>
Mostrarà un codi html, el contingut de la pàgina web index.html que l'hem passat.



