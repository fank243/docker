FROM php:7.4

RUN apt-get update \
    && apt-get install iputils-ping \
    && docker-php-ext-install mysqli && docker-php-ext-enable mysqli