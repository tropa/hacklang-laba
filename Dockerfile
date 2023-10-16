FROM hhvm/hhvm-proxygen:latest

RUN apt-get update -y && apt-get install -y curl php zip unzip

RUN mkdir /opt/composer

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN ls
RUN mv composer.phar /opt/composer/

RUN rm -rf /var/www
ADD . /var/www

# Reconfigure HHVM
ADD hhvm.prod.ini /etc/hhvm/site.ini

EXPOSE 80