FROM php:7.4-fpm

RUN apt-get update
RUN apt-get install -y libonig-dev libpq-dev libxml2-dev libzip-dev openssl sqlite3
RUN docker-php-ext-install \
    bcmath \
    ctype \
    fileinfo \
    json \
    mbstring \
    pdo \
    pdo_pgsql \
    pgsql \
    tokenizer \
    xml \
    zip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

WORKDIR /app
