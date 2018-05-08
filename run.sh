#!/bin/bash

/etc/init.d/nginx start
/etc/init.d/php7.2-fpm start || /etc/init.d/php7.1-fpm start
tail -f /var/log/nginx/access.log /var/log/nginx/error.log /var/www/default/storage/logs/laravel.log
