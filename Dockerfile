FROM node:18

COPY . /root/Anyav2
WORKDIR /root/Anyav2

RUN apt-get update && apt-get install -y ffmpeg

RUN npm install -g npm@latest
RUN npm install

CMD ["npm", "start"]
