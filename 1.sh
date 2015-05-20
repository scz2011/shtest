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
if [ "$OS" == 'CentOS' ]; then

	mkdir temp;
	mkdir down;
	mkdir web;
	yum update;
fi