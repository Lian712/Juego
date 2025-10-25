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
