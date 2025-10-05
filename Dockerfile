
FROM node:20-alpine

RUN apk add --no-cache git

WORKDIR /app

COPY package*.json ./

RUN npm install --omit=dev

COPY . .

RUN chmod +x start.sh || true

EXPOSE 3000

CMD ["npm", "start"]
