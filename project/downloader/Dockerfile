FROM ubuntu:14.04
ENV CHACHED_FLAG 1

RUN apt-get -y update
RUN apt-get -y install wget

ADD run.sh /run.sh


VOLUME ["/var/www/app"]
WORKDIR /var/www/app
ENTRYPOINT ["/bin/bash","/run.sh"]
