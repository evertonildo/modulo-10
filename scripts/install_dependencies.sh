#!/bin/bash
rm -R /var/www/html/*
unzip build.zip .
cp -R ./build/build/browser/* /var/www/html
