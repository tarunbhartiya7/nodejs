FROM node:alpine3.10

COPY app.js .

EXPOSE 1000

ENTRYPOINT [“node”, “app.js”]
