# Utiliza una imagen base de Node.js
FROM node:latest

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY package*.json ./
COPY . .

# Instala las dependencias del proyecto
RUN npm install

# Expone el puerto en el que el servidor Express está escuchando
EXPOSE 3000

# Comando para ejecutar la aplicación cuando se inicia el contenedor
CMD ["node", "app.js"]
