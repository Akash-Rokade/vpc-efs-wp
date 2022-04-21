#!/bin/bash

efs_id=${efs_id}

apt update
apt install apache2 php libapache2-mod-php php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc unzip nfs-common -y
cd /var/www/html/
rm -f index.html
cd ..
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport $efs_id.efs.us-east-1.amazonaws.com:/ /var/www/html/
df -h
a2enmod rewrite
cd html
wget https://wordpress.org/latest.zip
unzip latest.zip
mv wordpress/* /var/www/html/
chown -R www-data:www-data /var/www/html
find /var/www/html -type d -exec chmod g+s {} \;
chmod g+w /var/www/html/wp-content
chmod -R g+w /var/www/html/wp-content/themes
chmod -R g+w /var/www/html/wp-content/plugins
systemctl reload apache2
systemctl restart apache2
