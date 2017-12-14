#!/bin/bash
apt-get install software-properties-common -y
apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8 -y
add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://nl.mirror.babylon.network/mariadb/repo/10.2/ubuntu xenial main' -y
apt-get update

apt-get install mariadb-server -y --allow-unauthenticated
#mysql -e "set password for 'root'@'localhost' = password('Trinityds1')"
#mysql mysql -e "update user set plugin='' where User='root'; flush privileges;"
#mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -uroot -pTrinityds1 mysql
