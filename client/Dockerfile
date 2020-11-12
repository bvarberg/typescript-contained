FROM node:14.5.0 AS installer
RUN mkdir /usr/src/client
WORKDIR /usr/src/client
ENV PATH /usr/src/client/node_modules/.bin:$PATH
COPY package*.json ./
RUN npm ci

FROM node:14.5.0 AS builder
RUN mkdir /usr/src/client
WORKDIR /usr/src/client
COPY --from=installer /usr/src/client .
RUN npm run build

FROM node:14.5.0 AS server
RUN mkdir /build
WORKDIR /build
COPY --from=builder /usr/src/client/dist .
EXPOSE 3000
USER node
CMD ["npm", "start"]
