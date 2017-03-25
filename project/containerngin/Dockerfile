FROM ubuntu:14.04
MAINTAINER mohamed_elsayed
ENV CACHED_FLAG 1
#install nginx

RUN apt-get update -y && apt-get -y upgrade
RUN apt-get -y install nginx

#volume that contain data for the website

VOLUME /var/www/app

#adding the configuration files

ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx"]

