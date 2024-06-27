#! /bin/sh
set -eu

docker run --rm -d -p  192.168.114.190:7777:7777 -p 192.168.114.190:7777:7777/udp \
-v "$(pwd):/home/user/" beok159/samp-server