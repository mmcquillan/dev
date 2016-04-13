#!/bin/bash

sudo apt-get install -y vim curl wget git build-essential
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password vagrant'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password vagrant'
sudo apt-get install -y apache2 php5 libapache2-mod-php5
sudo apt-get install -y mysql-server php5-mysql
sudo service apache2 restart
sudo rm -rf /var/www
sudo ln -fs /vagrant /var/www
sudo /etc/init.d/apache2/restart
mysql -h localhost -u root -pvagrant -e 'CREATE DATABASE wordpress;'
mysql -h localhost -u root -pvagrant -D wordpress < /vagrant/backup.sql
mysql -h localhost -u root -pvagrant -e "update wp_options set option_value = 'http://localhost:8888/' where option_name = 'siteurl';"
wget -q http://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz -C /vagrant/
rm latest.tar.gz
cp /vagrant/wp-config-sample.php /vagrant/wp-config.php
sed -i 's/database_name_here/wordpress/g' /vagrant/wp-config.php
sed -i 's/username_here/root/g' /vagrant/wp-config.php
sed -i 's/password_here/vagrant/g' /vagrant/wp-config.php

