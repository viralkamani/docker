# Use an official PHP image with Apache
FROM php:8.1-apache

# Install necessary PHP extensions for MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli

# Copy application files to the container
COPY . /var/www/html/

# Set the correct permissions for Apache
RUN chown -R www-data:www-data /var/www/html/ \
    && chmod -R 755 /var/www/html/

# Enable Apache mod_rewrite (optional for frameworks like Laravel)
RUN a2enmod rewrite

# Expose port 80 (default for Apache)
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]
