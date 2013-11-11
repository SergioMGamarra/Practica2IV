Practica2IV
===========

## Práctica 2 IV - Gestión de Jaulas chroot

# Licencia

GNU GENERAL PUBLIC LICENSE Version 3

# Introducción

Para esta práctica seguiré con la dinámica de prácticas y seguiré utilizando el código del periódico digital que utilice para la primera práctica.
Como nota antes de iniciar a explicar la segunda práctica he de decir que estuve buscando las licencias de las noticias que hay en dicho periódico, todas ella fueron sacada del diario 20minutos en su versión digital, y dicho periódico se acogió a la licencia Creative Commons, por lo que su copia está permitida.
En la sección de deportes las noticias fueron extraidas del diario AS, que tiene todas los derechos reservados, por lo que una vez puntuada la práctica esta sección será eliminada.

# Creación de la jaula

Lo primero necesario para la práctica es la creación de una jaula y cambiaremos a root el dueño de dicho directorio.
En mi caso utilizaré jailkit tal como vimos en los ejercicios del tema. Para ello craeremos la jaula de la siguiente forma:

    debootstrap --arch=amd64 quantal /jaula/ http://archive.ubuntu.com/ubuntu
    chown -R root:root /jaula
    chroot -t proc proc /proc/
    
Seguidamente nos situaremos dentro de la jaula:

    chroot /jaula/
    
y terminaremos con la jaula instalandole los paquetes necesarios, en mi caso apache2 php5 y libapache2-mod-php5

    apt-get install apache2 php5 libapache2-mod-php5
    
Para no tener problemas con 'locales' en la instalación de los siguientes paquetes hemos de instalar los paquetes de lenguaje:

    apt-get install lenguage-pack-es

Una vez instalado apache tuve un problema relacionado con el dominio del servicio que no dejaba reiniciar el servicio. Para resolverlo solo fue necesario editar el fichero /etc/apache2/apache2.conf añadiendo al final del archivo la linea ServerName localhost.
Tras solucionar el problema con el servidor añadiremos los paquetes necesarios para la gestión de php y de la base de datos mySQL:

    apt-get install mysql-server mysql-client
    apt-get install php5-mysql php5-curl
    apt-get update
    apt-get install phpmyadmin
    
Para la instalación de phpmyadmin lo que debemos tener en cuenta es que el servidor que hemos de instalar es apache2.
Una vez que todo esta instalado reiniciaremos apache:

    service apache2 restart
    
Después de toda la instalación ya tenemos la jaula preparada y configurada para su utilización.
Lo primero que debemos de hacer es importar la base de datos a partir del archivo sql que la contiene. Una vez montada la base de datos tan solo tendremos que cambiar las variables de configuración de la base de datos en el fichero configuracion.php dentro de la carpeta BD.
Meteremos todos los ficheros en la carpeta /var/www/ dentro de la jaula y ya podemos visitar nuestra página en la dirección

    127.0.0.1/periodicoII/index/index.html
    

    

