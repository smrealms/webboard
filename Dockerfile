FROM php:7.2-apache
RUN docker-php-ext-install mysqli

WORKDIR /
RUN VERSION=3.2.5 \
    && curl -O https://www.phpbb.com/files/release/phpBB-$VERSION.tar.bz2 \
    && bzip2 -d phpBB-$VERSION.tar.bz2 \
    && tar -xf phpBB-$VERSION.tar \
    && rm -f phpBB-$VERSION.tar \
    && rm -rf /var/www/html \
    && mv phpBB3 /var/www/html \
    && chown -R www-data /var/www/html
