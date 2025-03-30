#!/bin/bash
rm -R /var/www/html/*
unzip build.zip .
cp -R ./build/browser/* /var/www/html
