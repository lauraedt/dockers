#REDIS
Redis és un motor de base de dades lliure de tipus clau-valor (key-value)
persistents que resideixen a la memoria ram y posteriorment diposita el
contingut de dades emmagatzemades al disc dur. Redis es Client/servidor
pel que aixeca el servei i contesta peticions, compta amb interface en
xarxa local el que li permet connectar clients desde altres hosts.


###COM FUNCIONA?
El Dockerfile de redis:  

- sobre la base de fedora 23 instala els paquets necessaris.

- s'exposa el port corresponent 

L'script *builder.sh*:

- crea un contenidor redis i dos clients
  
- els dos clients estan enllaçats al primer que fa de servidor, per tant, totes les dades quedaràn enregistrades per ser utiltzades per ambdós clients.


###TUTORIAL D'EXECUCIÓ
Accedir al directori amb el contignut necesari per crear el docker:
<pre>$ cd docker/nom_servei</pre>

Executar l'script de creació de la imatge i el container docker:

<pre>$ ./builder.sh</pre>

Arrencar els containers: (els dos clients)

<pre>$ docker start nom_cnt</pre>

Testejar el seu funcionament:

Accedir al contenidor client (bash):
<pre>$ docker exec -it redis_client_cnt bash</pre>

Accedir a la base de dades redis (el contenidor servidor):
<pre># redis-cli -h redis</pre>

Crear una clau nova i mostra-la:
<pre>> set newkey valor</pre>
<pre>> get newkey</pre>

Si accedim al segon client podem mostrar la clau creada per comprobar que, efectivament, s'utilitza la base de dades del primer contenidor



