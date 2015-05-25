#! /bin/bash
clear
echo ""
echo "#############################################################"
echo "#Centos 系统初始化"
echo "# Intro:"
echo "#"
echo "# Author: tommy sun"
echo "#"
echo "#############################################################"
echo ""
# Check OS
sudo mkdir temp;
sudo mkdir down;
sudo mkdir web;
sudo yum update;
sudo yum install gcc-c++ make;
sudo yum install php;
echo "#nodejs#"
cd temp;
sudo wget http://nodejs.org/dist/v0.12.3/node-v0.12.3.tar.gz;
sudo tar zxvf node-v0.12.3.tar.gz;
cd node-v0.12.3
sudo ./configure ;
sudo make;
sudo make install;
echo "#安装 aspnet#"
npm install -g grunt
npm install -g yo grunt-cli generator-aspnet bower

sudo yum install ruby
sudo yum groupinstall 'Development Tools' && sudo yum install curl git m4 ruby texinfo bzip2-devel curl-devel expat-devel ncurses-devel zlib-devel
echo "#安装 Lumen#"
yum install php
sudo curl -sS https://getcomposer.org/installer | php

php composer.phar

sudo composer global require "laravel/lumen-installer=~1.0"