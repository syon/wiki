FROM node:6.4

WORKDIR /app
ADD . /app
RUN npm install
