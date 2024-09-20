#! /bin/sh
set -eu

mkdir -p gamemodes

docker run --rm -it \
-w /home/user/server/ \
-v "$(pwd):/home/user/server/" beok159/pawncc \
sh -c "pawncc -d2 -O1 -Z+ -R+ -C+ '-;+' '-(+' -iinclude -isrc src/Appication.pwn && mv *.amx gamemodes/ "
