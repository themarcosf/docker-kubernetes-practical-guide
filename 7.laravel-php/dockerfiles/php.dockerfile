FROM php:8.2.4-fpm-alpine

# Set working directory 
WORKDIR /var/www/html

# Copy source files
COPY src .

# Install dependencies
RUN docker-php-ext-install pdo_mysql

RUN chown -R www-data:www-data /var/www/html