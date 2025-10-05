
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

RUN chmod +x start.sh || true

EXPOSE 3000

CMD ["npm", "start"]
