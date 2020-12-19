FROM node:alpine3.10

COPY app.js .

ENTRYPOINT [“node”, “app.js”]
