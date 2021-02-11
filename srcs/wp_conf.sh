apt-get -y update 
apt-get -y upgrade
service mysql start
mysql -u root -e "create database wordpress;"
mysql -u root -e "grant all privileges on wordpress.* to demo@localhost;"
mysql -u root -e "flush privileges;"	
apt-get -y install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
wget https://wordpress.org/latest.tar.gz -P /tmp
mkdir /var/www/html/wordpress
cp /tmp/wp-config.php var/www/html/wordpress
tar xzf /tmp/latest.tar.gz --strip-components=1 -C /var/www/html/wordpress/
chown -R www-data:www-data /var/www/html/wordpress/

