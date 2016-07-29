FROM ubuntu:16.04

MAINTAINER Alfredo Bello <skuarch@yahool.com.mx>

ENV DEBIAN_FRONTEND noninteractive

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install build-essential curl sudo apt-utils -y -f && \
    curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - && \
    apt-get update && \
    #useradd skuarch --create-home --password dragon3s12 -G sudo && \
    #echo "root:dragon3s12" | chpasswd && \
    #printf "dragon3s12\ndragon3s12\n" | sudo passwd && \
    apt-get install nodejs -y -f && \
    npm install -g npm && \
    npm install supervisor -g && \
    mkdir /NodeProjects && \
    chmod +x /NodeProjects

WORKDIR /NodeProjects
VOLUME /NodeProjects
#USER skuarch

EXPOSE 9999

CMD /bin/bash
