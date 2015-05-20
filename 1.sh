#! /bin/bash
clear
if [ "$OS" == 'CentOS' ]; then

	mkdir temp;
	mkdir down;
	mkdir web;
	yum update;
fi