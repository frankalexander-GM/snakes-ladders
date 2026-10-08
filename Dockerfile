FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
RUN echo 'events { worker_connections 1024; } http { server { listen 3000; location / { root /usr/share/nginx/html; index index.html; try_files $uri $uri/ =404; } } }' > /etc/nginx/conf.d/default.conf
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]