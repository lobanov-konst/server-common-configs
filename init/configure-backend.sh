#!/bin/bash

git config --global user.name "live-server-user"
git config --global user.email live.server@yopmail.com

#cp /etc/php/7.1/mods-available/amqp.ini /etc/php/7.1/mods-available/amqp.ini
#phpenmod amqp

#sed '/user =\|group =\|listen.owner\|listen.group/s/www-data/rcx-user/g' /etc/php/7.1/fpm/pool.d/www.conf
#sed '/user/s/www-data/rcx-user/g' /etc/nginx/nginx.conf

rabbitmqctl add_user www-data www-data-1234
rabbitmqctl set_user_tags www-data administrator
rabbitmqctl set_permissions -p / www-data ".*" ".*" ".*"


service rabbitmq-server restart
service php7.1-fpm restart
service nginx restart
