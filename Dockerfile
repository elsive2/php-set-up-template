FROM php:7.4-fpm

RUN apt-get update; apt-get install curl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/app

RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

COPY app /var/www/app

COPY --chown=www:www . ./app

USER www

CMD ["php-fpm"]
