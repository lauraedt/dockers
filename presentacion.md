% Contenedores Docker
% Laura Ran
% 09 de Marzo, 2016

# ¿Qué quiero explicar?

- ¿Qué es Docker?
- ¿Qué diferencias existen entre Docker y los sistemas de virtualización?
- ¿Para qué sirve?
- ¿Cómo funcionan los contenedores Docker?
- ¿

- ¡¡Necesito más información!! Visita: 


# ¿Qué es Docker?
**"[Docker](https://www.docker.com) provides an integrated technology suite that enables development and IT operations teams to build, ship, and run distributed applications anywhere"**

*"Docker proporciona un conjunto integrado de tecnologías que permite a los equipos de desarrollo y a los operadores de sistemas construir, enviar y ejecutar aplicaciones distribuidas en cualquier lugar"*

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
