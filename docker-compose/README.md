#DOCKER COMPOSE

Docker Compose es una eina per a definir i executar aplicacions multicontainer.
Permet la distribució i execució de diferents contenidors enllaçats entres si.

Docker Compose utilitza un arxiu compose.yml per a configurar els serveis
d'una aplicació. Després, utilitzant una sola ordre ($docker-compose up)
es creen i inicien tots els serveis de la configuració.

L'arxiu compose.yml es el descriptor dels contenidors.
En aquest arxiu yaml especifiquem els diferents contenidors i les seves 
propietats, com imatges, links, volums, etc., bàsicament podem iniciar 
les mateixes propietats que inidiquem engegant els contenidors individualment.

L'ús de Docker Compose és un procès de bàsicament tres pasos:

1. Definir l'entorn de l'aplicació amb un Dockerfile per a que pugui ser 
executat a qualsevol lloc.

2. Definir els serveis que constitueixen la aplicació en l'arxiu compose.yml
permetent així executar tots els serveis junts en un entron aïllat.

3. Executar docker-compose up per iniciar i executar tota l'aplicació.

En el siguiente ejemplo vemos varios contenedores: un contenedor para la 
base de datos postgresql, un contenedor para la aplicación (en Java) 
usando tomcat enlazado con el contenedor de postgresq.


###COM FUNCIONA?

En aquest exemple es creen diferents contenidors. Dos per a les vases de
dades de potgresql i redis, dos per a les aplicacions i un de tomcat 
enllaçant els contenidors de postgres i redis.

Per als contenidors de les bases de dades s'utilitza com a base la imatge
busybox per ser la més lleugera.
Per a les aplicacions s'utilitzen imatges descarregades de github.

La imatge dels contenidors s'indica mab la propietat image, els contenidors
de dades, redisdb i postgresqldb utilitzen la propoietat volumes amb les 
dades que guardaran. Amb la propietat hostname es pot indicar el nom de 
la màquina que el contenidor mostrarà dels enllaços. Les aplicacions 
ustilitzen le propietat volumes_from oer enllaçar els contenidors de dades.


###TUTORIAL D'EXECUCIÓ

Accedir al directori on es troba l'arxiu compose.yml:

<pre>$ cd docker/docker-compose</pre>

Executar l'ordre per iniciar la aplicació multicontenidor:

<pre>$ docker-compose up</pre>

Veure l'estat dels contenidors:

<pre>$ docker-compose ps</pre>

