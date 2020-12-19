FROM node:alpine3.10

COPY . /opt

WORKDIR /opt

ENTRYPOINT node app.js
