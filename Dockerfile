FROM debian:buster

ENV SERVERNAME localhost
ENV COUNTRY MA
ENV STATE Khouribga
ENV LOCALITY Khouribga
ENV ORGANIZATION 1337FIL

ADD ./srcs/nginx_conf.sh /tmp 
ADD ./srcs/mysql_conf.sh /tmp 
ADD ./srcs/php_conf.sh /tmp
ADD ./srcs/config.inc.php /tmp 
ADD ./srcs/services.sh /tmp 
ADD ./srcs/wp_conf.sh  /tmp
ADD ./srcs/wp-config.php /tmp

RUN  bash /tmp/nginx_conf.sh
RUN  bash /tmp/mysql_conf.sh
RUN  bash /tmp/php_conf.sh
RUN	 bash  /tmp/wp_conf.sh
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=$COUNTRY/ST=$STATE/L=$LOCALITY/O=$ORGANIZATION/CN=$SERVERNAME"
#RUN bash /tmp/services.sh
ADD  ./srcs/default  /etc/nginx/sites-available/
CMD /tmp/services.sh 

