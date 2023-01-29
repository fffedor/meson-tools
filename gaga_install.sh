#!/bin/bash
SSH_PASSWORD=ABCDEFG
GAGA_URL=https://assets.coreservice.io/public/package/22/app/1.0.3/app-1_0_3.tar.gz
GAGA_INSTALL="curl -o app-linux-amd64.tar.gz ${GAGA_URL} && tar -zxf app-linux-amd64.tar.gz && rm -f app-linux-amd64.tar.gz && ~/app-linux-amd64/app service install && ~/app-linux-amd64/app service start"

declare -a ADDRESS=(
127.0.0.1
127.0.0.1
127.0.0.1
127.0.0.1
127.0.0.1
)

for  i in ${!ADDRESS[@]}; do
  sshpass -p $SSH_PASSWORD ssh -o "StrictHostKeyChecking no" root@${ADDRESS[$i]} $GAGA_INSTALL
done