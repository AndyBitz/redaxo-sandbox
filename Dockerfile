FROM php:8.1-apache

# Install system packages and PHP extensions
RUN apt-get update \
    && apt-get install -y libicu-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl pdo_mysql \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd
