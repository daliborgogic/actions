#!/bin/sh

set -e

SET_PATH="/github/home/.ssh"

mkdir "$SET_PATH"
touch "$SET_PATH/known_hosts"

echo "$PRIVATE" > "$SET_PATH/deploy_key"
echo "$PUBLIC" > "$SET_PATH/deploy_key.pub"

chmod 700 "$SET_PATH"
chmod 600 "$SET_PATH/known_hosts"
chmod 600 "$SET_PATH/deploy_key"
chmod 600 "$SET_PATH/deploy_key.pub"

eval $(ssh-agent)
ssh-add "$SET_PATH/deploy_key"

ssh-keyscan -t rsa $HOST >> "$SET_PATH/known_hosts"

ssh -A -tt -o UserKnownHostsFile=/dev/null -o 'StrictHostKeyChecking=no' $USER@$HOST "$*"ssh -A -tt -o 'StrictHostKeyChecking=no' $USER@$HOST "$*"
