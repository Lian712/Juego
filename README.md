# juego
En este apartado te voy a mostrar lo que hicimos y lo que se debio hacer para el funcionamiento correcto de la pagina web, aparte de esto tambien resaltare unos puntos que me estaban costando a la realizacion como por ejemplo nombre, mayusculas o escritura de los archivos o comandos.
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


