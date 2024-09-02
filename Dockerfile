
FROM node:18-alpine

EXPOSE 9090
EXPOSE 9005

WORKDIR /usr/src/keyboard-shortcuts

COPY . ./

ENV NODE_OPTIONS="--dns-result-order=ipv4first"

RUN yarn install

RUN npm install -g firebase-tools


