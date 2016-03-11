#!/bin/bash

sudo apt-get install -y vim curl wget git build-essential
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password vagrant'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password vagrant'
sudo apt-get install -y apache2 php5 libapache2-mod-php5
sudo apt-get install -y mysql-server php5-mysql
sudo service apache2 restart

