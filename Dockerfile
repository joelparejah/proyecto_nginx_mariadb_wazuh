# Usa una imagen base de Python o Node.js, dependiendo de tu aplicación
# Aquí tomamos Python 3.9 como ejemplo
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo requirements.txt a la imagen para instalar las dependencias
COPY requirements.txt .

# Instala las dependencias necesarias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de la aplicación al contenedor
COPY . .

# Expon el puerto que la aplicación utilizará
EXPOSE 5000  # Cambia el puerto según lo que use tu app

# Comando para iniciar la aplicación
CMD ["python", "app.py"]  # Cambia según el archivo de entrada de tu aplicación

