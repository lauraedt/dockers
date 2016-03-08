% Contenedores Docker
% Laura Ran
% 09 de Marzo, 2016

# ¿Qué quiero explicar?

- ¿Qué es Docker?

- ¿Qué diferencias existen entre Docker y los sistemas de virtualización?

- ¿Para qué sirve?

- ¿Cómo funciona Docker?

- ¿Cómo se construye un contenedor y cómo lo administro?

- ¡¡Necesito saber más!! 

Visita: <https://github.com/lauraedt/dockers.git>


# ¿Qué es Docker?
**"[Docker](https://www.docker.com) provides an integrated technology suite that enables development and IT operations teams to build, ship, and run distributed applications anywhere"**

*"Docker proporciona un conjunto integrado de tecnologías que permite a los equipos de desarrollo y a los administradores de sistemas construir, enviar y ejecutar aplicaciones distribuidas en cualquier lugar"*

![](http://www.oniricosistemas.com.ar/blog/wp-content/uploads/2014/11/docker.png)


# ¿Qué diferencias existen entre Docker y los sistemas de virtualización?
**Las máquinas virtuales...**

- Necesitan un sistema operativo virtualizado
- Se consumen más recursos de hardware, limitando los utilizados por las aplicaciones
- Ocupa mucha memoria en el disco

**Los contenedores docker...**

- No emulan un sistema operativo propio
- Utilizan los recursos del anfitrión
- Los procesos són más ligeros y se aprovecha mejor el hardware
- Solo almacena en el disco aquello que lo diferencia del sistema anfitrión


# ¿Para qué sirve?

- Contenedores ligeros de fácil almacenaje, transporte y ejecución
- Despliegue de multitud de contenedores en un mismo equipo anfitrión
- Puesta en marcha de entornos de pruebas en pocos segundos 
- Facilidad de desarrollo de aplicaciones independientemente de dónde se ejecuten


# ¿Cómo funciona Docker?

- Se ejecutan sobre el kernel del equipo anfitrión
- Utilizan una imagen base
- Sobre ella se instalan imágenes de las aplicaciones que se necesiten
- El contenedor resultante es accesible y puede ser modificado
- Se pueden ejecutar a la vez un gran número de contenedores a la vez
- Los contenedores pueden interctuar entre ellos


# ¿Cómo funciona Docker?

Algunos aspectos a tener en cuenta:

**Diferencias entre contenedores e imágenes:** Las imágenes en Docker se pueden entender como un componente estático, es un sistema operativo base o un conjunto de aplicaciones. Un contenedor es la ejecución de una imagen.

**Un contenedor se ejecuta, se utiliza y muere:** Problema con la persistencia de datos

**Utilizan una red propia:** se ejecutan y comunican dentro de su propia red 172.17.0.1/16


# ¿Cómo se contruye un contenedor y cómo lo administro?

*Ejemplos: *

**Samba:** <https://github.com/lauraedt/dockers/tree/master/samba>

¿Cómo se crean las imágenes y contenedores Docker? ¿Qué información se puede extraer? ¿Es posible modificar un contenedor y guardar los cambios?

**Redis:** <https://github.com/lauraedt/dockers/tree/master/redis>

¿Cómo enlazar contenedores? ¿La información de la base de datos es persistente?

- **Dockerfiles:** Archivos que definen las instrucciones a seguir por Docker de forma secuencial para construir una imagen personalizada
- **Scripts** de creación de la imagen y del contenedor


# Más información y ejemplos en:

<https://github.com/lauraedt/dockers.git>

¿Preguntas?








