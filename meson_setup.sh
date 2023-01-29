#!/bin/bash
SSH_PASSWORD=ABCDEFG
MESON_TOKEN=token
MESON_SSL_PORT=443
MESON_CACHE=20

MESON_URL=https://staticassets.meson.network/public/meson_cdn/v3.1.19/meson_cdn-linux-amd64.tar.gz
MESON_INSTALL="wget ${MESON_URL} && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz && cd ./meson_cdn-linux-amd64 && sudo ./service install meson_cdn && sudo ./meson_cdn config set --token=${MESON_TOKEN} --https_port=${MESON_SSL_PORT} --cache.size=${MESON_CACHE} && sudo ./service start meson_cdn"

declare -a ADDRESS=(
127.0.0.1
127.0.0.1
127.0.0.1
127.0.0.1
127.0.0.1
127.0.0.1
127.0.0.1
127.0.0.1
127.0.0.1
)

for  i in ${!ADDRESS[@]}; do
  sshpass -p $SSH_PASSWORD ssh -o "StrictHostKeyChecking no" root@${ADDRESS[$i]} $MESON_INSTALL
done