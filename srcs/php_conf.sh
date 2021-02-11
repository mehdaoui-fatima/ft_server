apt-get -y install php-fpm php-mysql
#service php7.3-fpm start
apt-get -y install php-mbstring;
apt-get -y install php-zip
apt-get -y install php-gd
apt-get -y install php-xml
apt-get -y install php-pear
apt-get -y install php-gettext
apt-get -y install php-cgi
apt-get -y install wget
apt-get -y install procps
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.4/phpMyAdmin-4.9.4-english.tar.gz
mkdir /var/www/html/phpmyadmin 
tar xzf phpMyAdmin-4.9.4-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin
cp /tmp/config.inc.php /var/www/html/phpmyadmin 
chmod 660 /var/www/html/phpmyadmin/config.inc.php
chown -R www-data:www-data /var/www/html/phpmyadmin
service mysql start
mysql -u root < /var/www/html/phpmyadmin/sql/create_tables.sql

