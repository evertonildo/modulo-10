#!/bin/bash
sudo yum install -y httpd
sudo yum install -y unzip
rm -R /var/www/html/*
unzip /home/ec2-user/app/build.zip /var/www/html
