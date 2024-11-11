    # Usa la imagen base oficial de Ruby
FROM ruby:3.1-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto dentro del contenedor
COPY . /app

# Instala las dependencias de la aplicación usando Bundler
RUN gem install bundler && bundle install

# Expone el puerto 4567 (puerto por defecto de Sinatra)
EXPOSE 4567

# Define el comando para ejecutar la aplicación Sinatra
CMD ["ruby", "app.rb"]
