#!/usr/bin/env bash

docker run --rm --interactive --tty \
    --user $(id -u):$(id -g) \
    --volume $APP_DIR:/var/www/default \
    --workdir /var/www/default \
    --entrypoint "composer" \
    kyleparisi/larasible $1
