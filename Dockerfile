FROM php:8.1.3-apache
RUN docker-php-ext-install mysqli

WORKDIR /
RUN VERSION=3.3.4 \
    && curl -O https://download.phpbb.com/pub/release/3.3/$VERSION/phpBB-$VERSION.tar.bz2 \
    && bzip2 -d phpBB-$VERSION.tar.bz2 \
    && tar -xf phpBB-$VERSION.tar \
    && rm -f phpBB-$VERSION.tar \
    && rm -rf /var/www/html \
    && mv phpBB3 /var/www/html \
    && chown -R www-data /var/www/html
