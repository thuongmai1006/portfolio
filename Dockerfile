FROM php:8.1-apache

# Install mysqli once, before copying files
RUN docker-php-ext-install mysqli

# Then copy your site files
COPY docs/ /var/www/html/
