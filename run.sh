#!/bin/bash

/etc/init.d/nginx start
/etc/init.d/php-fpm start
tail -F /var/log/nginx/access.log /var/log/nginx/error.log /var/www/default/storage/logs/*.log
