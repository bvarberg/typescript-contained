FROM node:14.5.0

RUN mkdir /usr/src/server
WORKDIR /usr/src/server

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run compile

EXPOSE 4000

USER node
CMD ["node", "./dist/main.js"]
