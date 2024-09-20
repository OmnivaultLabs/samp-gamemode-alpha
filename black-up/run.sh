#!/bin/sh
set -eu

export NETWORK_DOCKER="persona_network"

export HOST_MYSQL="mysql"
export USER_MYSQL="root"
export PASS_MYSQL="persona_secret"
export DB_MYSQL="db_persona"

docker run --rm -d -p 7777:7777 -p 7777:7777/udp \
-v "$(pwd):/home/user/" \
--network ${NETWORK_DOCKER} \
-e MYSQL_HOST=${HOST_MYSQL} \
-e MYSQL_USER=${USER_MYSQL} \
-e MYSQL_PASSWORD=${PASS_MYSQL} \
-e MYSQL_DATABASE=${DB_MYSQL} \
beok159/samp-server