#!/bin/bash
sudo rm -R /var/www/html
sudo cp -R /home/ec2-user/app/build/browser/* /var/www/html
