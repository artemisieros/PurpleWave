
FROM node:20-alpine

RUN apk add --no-cache git ffmpeg curl \
    && curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp \
    && chmod a+rx /usr/local/bin/yt-dlp

WORKDIR /app

COPY package*.json ./

RUN npm install --omit=dev

COPY . .

RUN chmod +x start.sh || true

EXPOSE 3000

CMD ["npm", "start"]
