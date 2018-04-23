#!/bin/bash

tail -f /var/log/nginx/access.log /var/log/nginx/error.log /var/www/default/storage/logs/laravel.log
