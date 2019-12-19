FROM node:12.14.0-alpine3.10

WORKDIR /app

COPY package.json /app/package.json

RUN yarn global add @angular/cli@latest
RUN yarn install

COPY . /app

EXPOSE 4200

