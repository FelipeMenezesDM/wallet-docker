FROM php:7.4-apache
#ADD ./php/credentials.sh /opt/credentials.sh

# Enable mod_rewrite
RUN a2enmod rewrite
RUN service apache2 restart

# PHP extensions
RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql && docker-php-ext-install gettext

# Git install
RUN apt-get update && apt-get install -y git
