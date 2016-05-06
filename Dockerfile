FROM ubuntu:16.04

MAINTAINER Alfredo Bello <skuarch@yahool.com.mx>

RUN apt-get update && \
apt-get install build-essential curl sudo -y -f && \
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - && \
apt-get update && \
apt-get install nodejs -y -f && \
npm install supervisor -g && \
npm install log4js -g && \
mkdir /NodeProjects && \
chmod +x /NodeProjects

WORKDIR /NodeProjects
VOLUME /NodeProjects

EXPOSE 9999

CMD /bin/bash
