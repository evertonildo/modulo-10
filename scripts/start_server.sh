#!/bin/bash
cp -R /home/ec2-user/app/build/build/browser/* /var/www/html

sudo service httpd start
sudo systemctl start apache2
sudo systemctl enable apache2

# sudo systemctl start httpd.service
