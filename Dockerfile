
FROM node:21-alpine

LABEL maintainer="fahico98"

# RUN apk update
# RUN apk add git

RUN mkdir /cache
WORKDIR /cache

COPY package.json .
COPY package-lock.json .

RUN npm install
RUN npx tailwindcss init -p

RUN mkdir /app
WORKDIR /app

COPY . .
