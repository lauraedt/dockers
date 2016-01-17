# DOCKERS

##Introducció

###Què és Docker i per a què serveix? 

Docker és un software Open Source que utilitza els contenidors de Linux capaç de construir, transportar, compartir i executar procesos de forma aillada, ràpida i fàcil.

La plataforma Docker es composa de:
· Docker Engine: tecnología de virtualització de containers.
· Docker Hub: sistema que serveix per compartir i gestionar el accés a les imatges Docker.


Al diferència de la virtualització, Docker no emula una màquina amb un sistema operatiu propi. Així, els processos són molt més lleugers i s'aprofita millor el hardware. Els contenidors són autosuficients (encara que poden utilitzar altres contenidors, com bases de dades) i només necesiten la imatge del contenidor per a que funcionin tots els serveis que ofereix, són en esencia procesos dins del sistema anfitrió. Les imatges de docker són portables entre diferents plataformes (només cal tenir disponible Docker). 

Els contenidors dockers són capaços de comunicarse per túnels segurs i están aïllats en el sistema mitjançant namespaces i control groups. Aquests però, no conserven l'estat d'una execució a una altre, cada cop que s'executa es crearà una nova instància del contenidor. Per aconseguir que es conservin determinades dades es pot fer servir un altre contenidor.

La construcció dels contenidors és realitza mitjançant Dockerfiles que permet personalitzar les imatges segons les necessitats.



### OBJECTIU DEL PROJECTE

En aquest projecte tractaré d’explicar els diferents conceptes referents a la tecnología de Docker i dockeritzar els següents serveis a mode d'exemple:

Apache.
Samba.
Redis.
MongoDB.
Postgres.
HAProxy.
Echo (TCP y UDP).
Time (TCP y UDP).
Daytime (TCP y UDP).
Discard (TCP y UDP).
Chargen (TCP y UDP).
