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
echo "#nodejs#"
cd temp;
sudo wget http://nodejs.org/dist/v0.12.3/node-v0.12.3.tar.gz;
sudo tar zxvf node-v0.12.3.tar.gz;
cd node-v0.12.3
sudo ./configure ;
sudo make;
sudo make install;
echo "#安装 aspnet#"
sudo npm install -g grunt
sudo npm install -g yo grunt-cli generator-aspnet bower

sudo yum install ruby
sudo yum groupinstall 'Development Tools' && sudo yum install curl git m4 ruby texinfo bzip2-devel curl-devel expat-devel ncurses-devel zlib-devel
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
cd
tar zxvf PartsUnlimited-demo-app-linux.tar.gz -C ~/
source ~/.dnx/dnvm/dnvm.sh
dnvm use 1.0.0-beta5-11624 -r coreclr -arch x64
dnx . kestrel