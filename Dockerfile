FROM node:20.11.0-alpine

WORKDIR /app

COPY .npmrc .
COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "run", "dev"]