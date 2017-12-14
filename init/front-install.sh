#!/bin/bash
sudo apt-get update
sudo apt-get install npm -y
sudo npm install grunt -g
sudo apt-get install nodejs-legacy -y
sudo apt-get  install nginx -y
sudo chown -R  www-data:www-data /var/www
