#!/bin/bash

# go to root
cd

# Change to Time GMT+8
ln -fs /usr/share/zoneinfo/Asia/Kuala_Lumpur /etc/localtime

# Install Pritunl
echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.0 main" > /etc/apt/sources.list.d/mongodb-org-3.0.list
echo "deb http://repo.pritunl.com/stable/apt jessie main" > /etc/apt/sources.list.d/pritunl.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7F0CEB10
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv CF8E292A
apt-get update
apt-get -y upgrade
apt-get -y install pritunl mongodb-org
service pritunl start

# Install Squid
apt-get -y install squid3
cp /etc/squid3/squid.conf /etc/squid3/squid.conf.orig
wget -O /etc/squid3/squid.conf "https://raw.githubusercontent.com/syahz86/VPN/master/conf/squid.conf" 
MYIP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | grep -v '192.168'`;
sed -i s/xxxxxxxxx/$MYIP/g /etc/squid3/squid.conf;
service squid3 restart

# Enable Firewall
apt-get -y install ufw
sudo ufw allow 22,80,81,222,443,8080,9700,60000/tcp
sudo ufw allow 22,80,81,222,443,8080,9700,60000/udp
sudo yes | ufw enable

# Install Web Server
apt-get -y install nginx php5-fpm php5-cli
cd
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "https://raw.githubusercontent.com/syahz86/VPN/master/conf/nginx.conf"
mkdir -p /home/vps/public_html
echo "<pre>Setup by Syahmi</pre>" > /home/vps/public_html/index.html
echo "<?php phpinfo(); ?>" > /home/vps/public_html/info.php
wget -O /etc/nginx/conf.d/vps.conf "https://raw.githubusercontent.com/syahz86/VPN/master/conf/vps.conf"
sed -i 's/listen = \/var\/run\/php5-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php5/fpm/pool.d/www.conf
service php5-fpm restart
service nginx restart

# Install Vnstat
apt-get -y install vnstat
vnstat -u -i eth0
sudo chown -R vnstat:vnstat /var/lib/vnstat
service vnstat restart

# Install Vnstat GUI
cd /home/vps/public_html/
wget http://www.sqweek.com/sqweek/files/vnstat_php_frontend-1.5.1.tar.gz
tar xf vnstat_php_frontend-1.5.1.tar.gz
rm vnstat_php_frontend-1.5.1.tar.gz
mv vnstat_php_frontend-1.5.1 vnstat
cd vnstat
sed -i "s/\$iface_list = array('eth0', 'sixxs');/\$iface_list = array('eth0');/g" config.php
sed -i "s/\$language = 'nl';/\$language = 'en';/g" config.php
sed -i 's/Internal/Internet/g' config.php
sed -i '/SixXS IPv6/d' config.php
cd

# About
clear
echo "Script ini hanya mengandungi :-"
echo "-Pritunl"
echo "-MongoDB"
echo "-Web Server"
echo "-Squid Proxy  Port 8080, 60000"
echo "-Vnstat"
echo "Jika ada tambahan sila tambah sendiri ye =)"
echo "Sila login ke pritunl untuk proceed step seterusnya"
echo " "
echo "Disediakan Oleh Syahmi"
echo "TimeZone   :  Malaysia"
echo "Vnstat     :  http://$MYIP:81/vnstat"
echo "Pritunl    :  https://$MYIP"
echo "Username Pritunl : pritunl"
echo "Password Pritunl : pritunl"
echo "Sila copy code dibawah untuk Pritunl anda"
pritunl setup-key

