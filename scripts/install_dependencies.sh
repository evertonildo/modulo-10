#!/bin/bash
sudo yum install -y httpd
sudo yum install -y unzip
rm -R /var/www/html/*
unzip build.zip .
cp -R ./build/browser/* /var/www/html
