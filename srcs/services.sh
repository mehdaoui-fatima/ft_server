#!/bin/bash 

service nginx start 
var=$?
if [ $var -ne 0 ]; then 
	echo "failed to start nginx...."
	exit $var 
fi

service mysql start 
var=$?
if [ $var -ne 0 ]; then 
	echo "failed to start mysql...."
	exit $var
fi

service php7.3-fpm start 
var=$?
if [ $var -ne 0 ]; then 
	echo "failed to start php7.3-fpm...."
	exit $var
fi

while [ true ]; do
pgrep nginx > /dev/null
STATUS1=$?
pgrep mysql > /dev/null
STATUS2=$?
pgrep php > /dev/null 
STATUS3=$?
#echo "yes im $STATUS3"
if [ $STATUS1 !=  0 ] || [ $STATUS2 != 0 ] || [ $STATUS3 != 0 ]
then
	echo "One of the processes has already exited."
	exit 1
fi
done
 
