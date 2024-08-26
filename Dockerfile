FROM node:18

# Définir le répertoire de travail
WORKDIR /root/Anyav2

# Copier tous les fichiers dans le conteneur
COPY . .

# Mettre à jour les paquets et installer ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Installer la dernière version de npm
RUN npm install -g npm@latest

# Installer yarn globalement
RUN npm install -g yarn@latest

# Installer les dépendances avec yarn
RUN yarn install --network-concurrency 1

# Commande de démarrage de l'application
CMD ["npm", "start"]
