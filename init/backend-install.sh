#!/bin/bash
add-apt-repository ppa:ondrej/php -y
apt-get update

apt-get install php7.1 -y
apt-get install php7.1-common -y
apt-get install php7.1-fpm -y
apt-get install php7.1-cli  -y
apt-get install php7.1-gd  -y
apt-get install php7.1-json  -y
apt-get install php7.1-mysql  -y
apt-get install php7.1-curl -y
apt-get install php7.1-xml -y
apt-get install php7.1-mbstring -y
apt-get install php7.1-bcmath -y
apt-get install php7.1-mcrypt -y
apt-get install php-redis -y
apt-get install php-amqp -y
apt-get install supervisor -y

apt-get remove apache2* --purge -y

apt-get install nginx -y
apt-get install redis-server -y
apt-get install rabbitmq-server -y
