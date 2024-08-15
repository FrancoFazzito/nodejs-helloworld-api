# Usar una imagen base oficial de Node.js
FROM node:14

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del c�digo de la aplicaci�n
COPY . .

# Exponer el puerto en el que la app estar� corriendo
EXPOSE 8080

# Comando para iniciar la aplicaci�n
CMD ["npm", "start"]
