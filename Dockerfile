FROM node:18

WORKDIR /root/Anyav2

COPY . .

RUN apt-get update && apt-get install -y ffmpeg

RUN npm install -g npm@latest

RUN npm install --network-concurrency 1

CMD ["npm", "start"]
