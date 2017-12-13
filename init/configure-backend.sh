!#/bin/bash
git config --global user.name "live-server-user"
git config --global user.email live.server@yopmail.com

#cp /etc/php/7.1/mods-available/amqp.ini /etc/php/7.1/mods-available/amqp.ini
#phpenmod amqp

#sed '/user =\|group =\|listen.owner\|listen.group/s/www-data/rcx-user/g' /etc/php/7.1/fpm/pool.d/www.conf
#sed '/user/s/www-data/rcx-user/g' /etc/nginx/nginx.conf

rabbitmqctl add_user rcx-user rcx-user-1234
rabbitmqctl set_user_tags rcx-user administrator
rabbitmqctl set_permissions -p / rcx-user ".*" ".*" ".*"

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
#php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"


service rabbitmq-server restart
service php7.1-fpm restart
service nginx restart
