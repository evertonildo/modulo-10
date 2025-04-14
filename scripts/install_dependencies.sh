#!/bin/bash
touch /var/www/html/temp.html
sudo cp -R /home/ec2-user/app/build/browser/* /var/www/html
