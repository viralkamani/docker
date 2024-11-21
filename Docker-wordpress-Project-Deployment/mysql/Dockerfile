# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Environment variable to avoid prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install MySQL server
RUN apt-get update && \
    apt-get install -y mysql-server && \
    apt-get clean

# Adjust MySQL configuration to allow remote connections
RUN sed -i "s/bind-address\s*=.*$/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf

# Ensure proper permissions on necessary directories
RUN chown -R mysql:mysql /var/lib/mysql /var/log/mysql

# Copy the SQL file into the image , change yourDumpFileName.sql to your dump file name
COPY yourDumpFileName.sql /docker-entrypoint-initdb.d/wordpress.sql 

# Expose MySQL port
EXPOSE 3306

# Start MySQL service and set up the database, user, and privileges on the first container start
CMD service mysql start && \
    mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;" && \
    mysql -e "CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED BY 'wordpress_password';" && \
    mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%' WITH GRANT OPTION;" && \
    mysql -e "FLUSH PRIVILEGES;" && \
    mysql wordpress < /docker-entrypoint-initdb.d/wordpress.sql && \
    tail -f /dev/null

