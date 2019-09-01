#!/bin/bash

/etc/init.d/nginx start
/etc/init.d/php-fpm start

# cleaner than running tail, must be run with either docker options
# -it
# -dt
# your application should log to stderr
cat
