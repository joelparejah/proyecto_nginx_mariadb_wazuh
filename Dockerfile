# Construcción de la imagen de Nginx
FROM nginx:latest AS nginx

# Copiar archivo de configuración de Nginx
COPY ./nginx.conf /etc/nginx/nginx.conf

# Exponer puerto 80 para nginx
EXPOSE 80

# Construcción de la imagen de MariaDB
FROM mariadb:latest AS mariadb

# Establecer variables de entorno para MariaDB
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=app_db
ENV MYSQL_USER=app_user
ENV MYSQL_PASSWORD=app_password

# Exponer puerto 3306 para MariaDB
EXPOSE 3306

# Construcción de la imagen de Wazuh
FROM wazuh/wazuh-manager:4.4.0 AS wazuh

# Exponer los puertos necesarios para Wazuh
EXPOSE 1514 1515 55000

