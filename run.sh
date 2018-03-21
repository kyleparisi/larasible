#!/bin/bash

service nginx start
service php7.2-fpm start
tail -f /var/log/nginx/access.log /var/log/nginx/error.log /var/www/default/storage/logs/laravel.log
