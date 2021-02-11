apt-get -y  install mariadb-server mariadb-client
service mysql start 
#mysql -u root -e "CREATE database wordpress;"
mysql -u root -e "CREATE USER 'demo'@'localhost' IDENTIFIED BY 'demo';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* to 'demo'@'localhost'";
mysql -u root -e "FLUSH PRIVILEGES;"

