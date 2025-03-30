#!/bin/bash
aws s3 cp s3://build.modulo-10/build.zip /home/ec2-user/app/build.zip
unzip /home/ec2-user/app/build.zip