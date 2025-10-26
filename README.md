# juego
Este es un juego que creamos un amigo y yo en otra materia, la cual consiste en un juego tipo casino que nos ayuda a mirar las probabilidades para ganar o perder y de la importancia de aplicar la teoria de monty hall (cuando cambiamos de opcion luego que nos dan pistas, tendremos mejores posibilidades para ganar), tambien te voy a mostrar lo que hicimos y lo que se debio hacer para el funcionamiento correcto de la pagina web, aparte de esto tambien resaltare unos puntos que me estaban costando a la realizacion como por ejemplo nombre, mayusculas o escritura de los archivos o comandos.
# Creación del repositorio
Primer paso creamos un repositorio, lo nombramos como queramos y le damos en la opcion de agregar el README.md en ON
Segundo paso subimos al repositorio lo que queremos, un html o lo que sea y de este creamos un Dockerfile
# Lo que debe llevar el Dockerfile
En el Dockerfile agregamos lo que necesitamos y en este caso le agregamos lo siguiente:
```Dockerfile
# Imagen base ligera con Nginx (servidor web)
FROM nginx:alpine

# Elimina la página por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tu archivo HTML al directorio donde Nginx busca el contenido
COPY index.html /usr/share/nginx/html/index.html

# Expone el puerto 80 para acceder desde el navegador
EXPOSE 80

# Inicia Nginx en modo no demonio (para mantener el contenedor activo)
CMD ["nginx", "-g", "daemon off;"]
```
# Procedimiento
Cuando ya tengamos todo lo anterior listo lo que vamos a hacer es lo siguiente, hacemos los siguientes comandos paso a paso.
Con estos actualizamos el sistema, luego instalamos git y Docker
```
sudo apt update
sudo apt install git -y
sudo apt upgrade -y // Este paso no es necesario
sudo apt install docker-compose -y
```
Revisamos la version que se instalo y el estado del Docker
```
sudo docker --version
sudo systemctl status docker
```
Clonamos el repositorio
```
git clone https://github.com/Lian712/juego // Lian712 es mi usuario, en otro caso se pone algun otro y el juego es el nombre del repositorio
cd juego
```
Creamos la Imagen Docker y revisamos si se creo correctamente
```
sudo docker build -t juego .
sudo docker image ls
```
Inicializamos/Corremos el Docker en el puerto 80
```
sudo docker run -d -p 80:80 juego
```
Revisamos en el navegador si funciona
```
http://54.160.36.205 // la ip es la publica que tu tengas, en mi caso es esa
```
# Conclusión
Asi fue como se hizo este proyecto, espero te sirva y puedas incluso subir tu propio Docker con la pagina web que desees



