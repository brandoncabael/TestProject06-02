FROM node:7

ENV DEBUG=sample-nodejs-express-app:*

RUN mkdir -p /app

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD [ "npm", "start" ]