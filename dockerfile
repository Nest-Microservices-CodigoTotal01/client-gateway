FROM node:21-alpine3.19

# El workdir es el directorio donde se va a trabajar en el contenedor, osea que es el directorio donde se va a copiar el código fuente de la aplicación
WORKDIR /usr/src/app
# aqui se esta copiando el archivo json que contiene las dependencias de la aplicación hacia el directorio de trabajo
COPY package*.json ./
COPY package-lock.json ./

# se instalan las dependencias de la aplicación en el contenedor
RUN npm install

# aqui se copia el código fuente de la aplicación hacia el directorio de trabajo, todo lo que no esta siendo ignorado en el dockerignore
COPY . .

# se expone el puerto 3000 del contenedor
EXPOSE 3000