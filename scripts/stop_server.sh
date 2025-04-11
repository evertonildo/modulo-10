#!/bin/bash

ls
isExistApp=`pgrep httpd`
if [[ -n  $isExistApp ]]; then
    sudo service apache2 stop        
fi

