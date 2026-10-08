FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY public/ /usr/share/nginx/html
RUN rm -f /usr/share/nginx/html/Dockerfile
RUN echo 'events { worker_connections 1024; } \n http { server { listen 80; location / { root /usr/share/nginx/html; index index.html; try_files $uri $uri/ =404; } } }' > /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]