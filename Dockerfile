# Imagen base ligera
FROM node:18-alpine

# Directorio de trabajo
WORKDIR /app

# Copiar manifiestos e instalar dependencias (producción)
COPY package*.json ./
RUN npm ci --omit=dev || npm install --omit=dev

# Copiar el resto del código
COPY . .

# Puerto expuesto por la app
EXPOSE 3000

# Comando de arranque
CMD ["node", "server.js"]
