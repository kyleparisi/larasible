#!/bin/bash

/etc/init.d/nginx start
/etc/init.d/php-fpm start
tail -f /var/log/nginx/access.log /var/log/nginx/error.log /var/www/default/storage/logs/*.log
