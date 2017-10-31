FROM php:7-fpm

LABEL author="Suzuka Asagiri <suzutan0s2@suzutan.jp>"
LABEL repository="https://github.com/suzutan/docker-php7-app"
LABEL description="PHP7 customized image"

RUN apt-get clean all
RUN apt-get -y update
RUN apt-get -y install apt-file sudo git vim curl wget libmcrypt-dev build-essential python-software-properties mysql-client zlib1g-dev
RUN docker-php-ext-install fileinfo mysqli mbstring mcrypt pdo pdo_mysql zip zlib json curl
CMD ["php-fpm"]
