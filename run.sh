#!/bin/bash

# Start NGINX 
/etc/init.d/nginx start

# Start PHP-FPM (any PHP version)
current_version=$(php --version | head -n 1 | cut -d " " -f 2 | cut -c 1,3)
formatted_version=${current_version:0:1}.${current_version:1:2}

if [ -f "/etc/init.d/php${formatted_version}-fpm" ]; then
    cp -rf /etc/init.d/php${formatted_version}-fpm /etc/init.d/php-fpm 
fi

if [ -f "/etc/init.d/php-fpm" ]; then
    /etc/init.d/php-fpm start
fi

# Tail on Logs that exist
nginx_access="/var/log/nginx/access.log"
nginx_error="/var/log/nginx/error.log"
laravel_log="/var/www/default/storage/logs/laravel.log"
lumen_log="/var/www/default/storage/logs/lumen.log"

for log in "$nginx_access" "$nginx_error" "$laravel_log" "$lumen_log"; do
    if [ -f "$log" ]; then
	    arr+=("$log")
    fi
done

sudo tail -f "${arr[@]}"
