#POSTGRES

Postgresql és un sistema de gestió de bases de dades relacional de codi obert dels més potents del mercat.

Utilitza un model client/servidor i multiprocessos per a garantitzar l'estabilitat del sistema. Si falla un dels processos no afectarà als altres i continuarà funcionant.

Escolta pel port 5432, la conexió és de tipus TCP/IP i la comunicació es realitza en text pla. 


###COM FUNCIONA?
El Dockerfile de postgres:  

- sobre la base de fedora 21 instala els paquets necessaris.

- es copien els arxius de configuració necessaris així com un script per engegar el servei i un altre per crear els usuaris i la base de dades

- s'executen els scripts

- s'exposa el port necessari i es crea el volum de dades

- l'imatge executarà l'script que arrenca postgres (si no s'indica el contrari posteriorment) 

L'script *builder.sh*:

- crea un contenidor 
  
- s'enllacen el port del host amb el del contenidor

- s'enllaça el volum de dades del contenidor amb un directori del propi host per facilitar la persistencia de dades.


###TUTORIAL D'EXECUCIÓ
Accedir al directori amb el contignut necesari per crear el docker:
<pre>$ cd docker/nom_servei</pre>

Executar l'script de creació de la imatge i el container docker:

<pre>$ ./builder.sh</pre>

Arrencar el container

<pre>$ docker start nom_cnt</pre>

Testejar el seu funcionament:
Cal conactar-se a la base de dades 'dockerdb' amb el username 'laura' i password 'laura'.

<pre>$ psql -h localhost -U laura -d dockerdb</pre>

NOTA: Per diferents problemes a l'hora de d'executar el servei de postgres (per no poder usar systemctl) s'ha utilitzat com a referència un Dockerfile extret de dockerhub on es soluciona el problema.
