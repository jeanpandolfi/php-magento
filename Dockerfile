FROM php:7.3-apache

ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/

RUN chmod uga+x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gd 
RUN install-php-extensions bcmath
RUN install-php-extensions intl
RUN install-php-extensions xsl
RUN install-php-extensions pdo_mysql
RUN install-php-extensions soap
RUN install-php-extensions zip
RUN install-php-extensions sockets
