#!/bin/bash
sudo service httpd start
sudo systemctl start apache2
sudo systemctl enable apache2

# sudo systemctl start httpd.service
