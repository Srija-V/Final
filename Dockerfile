FROM php:8.1-apache

WORKDIR /var/www/html

RUN rm -rf /var/www/html/*

RUN apt-get update && apt-get install -y php8.1

COPY . /var/www/html

EXPOSE 80

CMD ["apache2ctl,"-D","Foreground"]
