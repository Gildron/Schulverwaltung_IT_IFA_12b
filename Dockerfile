ARG XDEBUG_VERSION="xdebug-2.9.0"

FROM php:fpm

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN docker-php-ext-install pdo pdo_mysql

RUN yes | pecl install ${XDEBUG_VERSION} \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini


CMD ["frenner/php-sql-debug:1.0"]