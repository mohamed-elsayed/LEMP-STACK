FROM ubuntu:14.04
ENV CACHED_FLAG 1 
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install php5-fpm php5-mysql


ADD www.conf /etc/php5/fpm/pool.d/www.conf
ADD php-fpm.conf /etc/php5/fpm/php-fpm.conf

ADD run.sh /run.sh


VOLUME /var/www/app

EXPOSE 9000

ENTRYPOINT ["/bin/bash","/run.sh"]
