#MONGODB

MongoDB és un sistema de base de dades NoSQL orientat a documents, 
desenvolupat sota el concepte de codi obert.

MongoDB forma part de la nova familia de bases de dades que en comptes
de guardar les dades en taules com en les bases de dades relacionals,
guarda estructures de dades en documents tipus JSON amb un esquema dinàmic
(format BSON), fent que la integració de les dades en certes aplicacions
sigui més fàcil i ràpida.


## EXEMPLE DE DOCUMENT JSON ##
<pre>
{  
    "People":   
        [  
            {  
                "_id": ObjectId("51c420ba77edcdc3ec709218"),  
                "nombre": "Manuel",  
                "apellidos": "Pérez",  
                "fecha_nacimiento": "1982-03-03",  
                "altura": 1.80,  
                "activo": true,  
                "intereses":["fútbol","tenis"],  
                "tarjeta_credito": null,  
                "dni":  
                    {  
                        "numero":"465464646J",  
                        "caducidad":"2013-10-21"  
                    }  
            },  
            {  
                "_id": ObjectId("51c420ba77ed1dc3ec705289"),  
                "nombre": "Sara",  
                "apellidos": "Ruano",  
                "fecha_nacimiento": "1985-12-03",  
                "altura": 1.65,  
                "activo": false,  
                "intereses":["moda","libros","fotografía","política"],  
                "tarjeta_credito": null  
            }  
        ]  
}
</pre>


###COM FUNCIONA?
El Dockerfile de mongodb:  

- sobre la base de fedora 23 instala els paquets necessaris.

- crea el directori on s'allotjarà la base de dades

- en executar el docker arrancarà automáticament el servidor mongodb

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
Iniciar una sessió del client amb el servidor:
<pre>$ mongo --host localhost --port 27017</pre>




