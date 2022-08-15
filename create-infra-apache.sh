#!/bin/bash

apt-get update -y

apt-get install apache2 systemctl unzip wget curl -y

systemctl start apache2



cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

exec "$@"
