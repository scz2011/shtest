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
mkdir temp;
mkdir down;
mkdir web;
yum update;
yum install gcc-c++ make;
echo "#nodejs#"
cd temp;
wget http://nodejs.org/dist/v0.12.3/node-v0.12.3.tar.gz;
tar xvf node-v0.12.3.tar.gz;
cd node-v0.12.3
./configure ;
make;
make install;
echo "#安装 aspnet#"
npm install -g grunt
npm install -g yo
npm install -g yo grunt-cli generator-aspnet bower

cd
tar zxvf PartsUnlimited-demo-app-linux.tar.gz -C ~/
source ~/.dnx/dnvm/dnvm.sh
dnvm use 1.0.0-beta5-11624 -r coreclr -arch x64
dnx . kestrel