FROM node:6.4

WORKDIR /tmp
ADD package.json /tmp
RUN npm install
WORKDIR /app
