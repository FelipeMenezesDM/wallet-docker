FROM php:7.4-apache
ADD ./php/credentials.sh /opt/credentials.sh

# PHP extensions
RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql && docker-php-ext-install gettext

# Git install
RUN apt-get update && apt-get install -y git