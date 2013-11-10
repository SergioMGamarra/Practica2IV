Practica2IV
===========

## Práctica 2 IV - Gestión de Jaulas chroot

# Introducción

Para esta práctica seguiré con la dinámica de prácticas y seguiré utilizando el código del periódico digital que utilice para la primera práctica.
Como nota antes de iniciar a explicar la segunda práctica he de decir que estuve buscando las licencias de las noticias que hay en dicho periódico, todas ella fueron sacada del diario 20minutos en su versión digital, y dicho periódico se acogió a la licencia Creative Commons, por lo que su copia está permitida.
En la sección de deportes las noticias fueron extraidas del diario AS, que tiene todas los derechos reservados, por lo que una vez puntuada la práctica esta sección será eliminada.

# Creación de la jaula

Lo primero necesario para la práctica es la creación de una jaula y cambiaremos a root el dueño de dicho directorio.
En mi caso utilizaré jailkit tal como vimos en los ejercicios del tema. Para ello craeremos la jaula de la siguiente forma:

    sudo debootstrap --arch=amd64 quantal /home/jaulas/pr2/ http://archive.ubuntu.com/ubuntu
    chown -R root:root /home/jaulas/pr2
    
Seguidamente nos situaremos dentro de la jaula:

    chroot /home/jaulas/pr2
    
y terminaremos con la jaula instalandole los paquetes necesarios, en mi caso apache2 php5 y libapache2-mod-php5

    apt-get install apache2 php5 libapache2-mod-php5
