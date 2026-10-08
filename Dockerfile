FROM node:18-alpine
WORKDIR /app
COPY index.html /app/index.html
RUN npm install -g serve
EXPOSE 3000
CMD ["serve", "-s", "/app", "-l", "3000"]