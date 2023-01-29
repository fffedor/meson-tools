#!/bin/bash
SSH_PASSWORD=ABCDEFG
GAGA_TOKEN=token
GAGA_INSTALL="~/app-linux-amd64/apps/gaganode/gaganode config set --token=${GAGA_TOKEN} && ~/app-linux-amd64/app restart"

declare -a ADDRESS=(
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
  sshpass -p $SSH_PASSWORD ssh -o "StrictHostKeyChecking no" root@${ADDRESS[$i]} $GAGA_INSTALL
done