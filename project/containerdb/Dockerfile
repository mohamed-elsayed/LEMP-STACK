FROM ubuntu:14.04
MAINTAINER MOHAMD.ALSAID@GMAIL.COM
ENV CACHED_FLAG 1
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y mysql-client mysql-server pwgen

RUN sed -i -e "s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

ADD startdb.sh /startdb.sh

ENV WPDB wordprss
ENV WPUSER wpuser
ENV WPPASS random


ENTRYPOINT ["/bin/bash","/startdb.sh"]

EXPOSE 3306
