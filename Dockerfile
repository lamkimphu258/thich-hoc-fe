FROM node:18-alpine3.16

WORKDIR app

COPY . .

EXPOSE 3000

CMD yarn dev
