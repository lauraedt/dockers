# INTRODUCCIÓN AL POSTGRES #
PostgreSQL es un sistema de gestión de bases de datos objeto-relacional, distribuido bajo licencia BSD y con su código fuente disponible libremente. Es el sistema de gestión de bases de datos de código abierto más potente del mercado y en sus últimas versiones no tiene nada que envidiarle a otras bases de datos comerciales.

PostgreSQL utiliza un modelo cliente/servidor y usa multiprocesos en vez de multihilos para garantizar la estabilidad del sistema. Un fallo en uno de los procesos no afectará el resto y el sistema continuará funcionando. 

El puerto de escucha es el 5432, la conexión es TCP/IP y la comunicación se realiza mediante texto plano.

## INSTALACIÓN Y TESTEO DE SERVIDOR POSTGRES ##
Hacer los siguientes pasos con tu usuario desde el directorio docker/postgres.

1. Ejecutar el script build_docker.sh para crear la imagen y el container. Sigue los pasos. <pre>$ ./build_docker.sh</pre>

2. Arrancar el container.

3. Consultar estado del container: <pre>$ docker ps</pre>

4. Para testear que todo funciona correctamente:  
Nos conectamos a la base de datos 'dockerdb' con el username 'laura' que tiene como password 'laura' al host propio. 
<pre>$ psql -h localhost -U laura -d dockerdb</pre>
