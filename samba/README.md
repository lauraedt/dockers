#SAMBA
Samba és una implementació lliure del protocol d'arxius compartits de Microsoft Windows (abans anomenat SMB, ara CIFS) per a sistemes Unix.
Així, és possible que equips Linux actuin con a servidor o client en xarxes Windows. 
Samba configura els directoris de unix com recursos compartits a través de la xarxa. Per als usuaris de Windows aquests recursos apareixen com a carpetes normals de xarxa. Els usuaris Linux poden muntar els sistemes d'arxius d'aquestes unitats de xarxa com si fosin dispositius locals o utilitzar l'ordre smbclient per a conectar-se a l'estil ftp.



###COM FUNCIONA?
El Dockerfile de samba:  

- sobre la base de fedora 23 instala els paquets necessaris.

- crea dos directoris que seran els que compartirem i s'afegeixen arxius.

- copia el fitxer de configuració de samba al directori /etc/samba/.

- crea un usuari de prova i l'afegeix un smbpasswd (user=laura,password=laura).  

L'script *builder.sh*:
  
- crea la imatge de samba en base a la que es crearan els containers que executaran els serveis smbd i nmbd amb els seus corresponents ports.




###TUTORIAL D'EXECUCIÓ
Accedir al directori amb el contignut necesari per crear el docker:
<pre>$ cd docker/nom_servei</pre>

Executar l'script de creació de la imatge i el container docker:

<pre>$ ./builder.sh</pre>

Arrencar els containers:

<pre>$ docker start nom_cnt</pre>

Testejar el seu funcionament:

Llistar els recuros compartits:
<pre>$ smbclient -L //IP</pre>

Accedir directament a un recurs (es pot testejar amb guest):
<pre>$ smbclient //IP/documentation -U laura</pre>

Muntar un d'aquests recursos, per exemple el home (podem testejar amb diferents usuaris)
<pre># mount -t cifs //IP/laura /mnt -o user=laura,password=laura</pre>




###ACCEDIR AL CONTAINER: ADMINISTRAR USUARIS I MODIFICAR LA CONFIGURACIO
Per administrar el servei de samba executarem una sessió interactiva de bash dins del contenidor:

<pre>$ docker exec -it nom_container /bin/bash</pre>

Es possible utilitzar la comanda "docker exec" directament amb una ordre, per exemple llistar el contingut d'un directori:

<pre>$ docker exec -it nom_container ls /home/laura</pre>

Si volem podem crear una nova imatge del servei samba amb les modificacions creades anteriorment per arrancar el servei amb la nova configuració i els nous usaris, nous recursos... així com tots els canvis que s'hagin realitzat. 

Per fer-ho cal generar una nova imatge:

<pre>$ docker commit -m "descripció" nom_contenidor nom_imatge:v2</pre>

Podrem tornar a executar la nova imatge de la següent manera:

<pre>$ docker run -d --name=nou_nom_contenidor nom_imatge:v2</pre>

