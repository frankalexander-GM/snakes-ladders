FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY . /usr/share/nginx/html
RUN rm -f /usr/share/nginx/html/Dockerfile
EXPOSE 80