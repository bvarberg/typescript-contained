FROM node:14.5.0

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run compile

EXPOSE 3000

USER node
CMD ["node", "./dist/main.js"]
