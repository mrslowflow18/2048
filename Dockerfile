FROM node:20-alpine

ENV TZ=Europe/Moscow

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
