FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY . /usr/share/nginx/html
# Eliminar la configuración por defecto de Nginx
RUN rm -f /etc/nginx/conf.d/default.conf
# Agregar configuración personalizada para servir archivos estáticos
RUN echo 'events { worker_connections 1024; } \n http { server { listen 80; location / { root /usr/share/nginx/html; index index.html; try_files $uri $uri/ =404; } } }' > /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]