FROM node:10.15-slim

MAINTAINER youngwang "holywangyong@hotmail.com"

ENV WORK_DIR=/workspace 

RUN true \ 
# set china debian mirrors registry
&& sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
&& sed -i 's/security.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
# install vim, git
&& apt-get update \
&& apt-get install -y vim git \
# set china npm and yarn registry
&& npm config set registry http://registry.npm.taobao.org/ \
&& yarn config set registry https://registry.npm.taobao.org/ \
# install vue-cli
&& npm install -g @vue/cli \
# make work dir
&& mkdir $WORK_DIR 

WORKDIR $WORK_DIR

