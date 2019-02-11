#!/bin/bash

# Get the current PHP version
current_version=$(php --version | head -n 1 | cut -d " " -f 2 | cut -c 1,3)
formatted_version=${current_version:0:1}.${current_version:1:2}

/etc/init.d/nginx start
cp -rf /etc/init.d/php${formatted_version}-fpm /etc/init.d/php-fpm 
/etc/init.d/php-fpm start
tail -f /var/log/nginx/access.log /var/log/nginx/error.log /var/www/default/storage/logs/laravel.log