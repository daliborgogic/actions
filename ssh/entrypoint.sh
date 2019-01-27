#!/bin/sh

set -e

PATH="/github/home/.ssh"

mkdir "$PATH"
touch "$PATH/known_hosts"

echo "$PRIVATE" > "$PATH/deploy_key"
echo "$PUBLIC" > "$PATH/deploy_key.pub"

chmod 700 "$PATH"
chmod 600 "$PATH/known_hosts"
chmod 600 "$PATH/deploy_key"
chmod 600 "$PATH/deploy_key.pub"

eval $(ssh-agent)
ssh-add "$PATH/deploy_key"

ssh-keyscan -t rsa $HOST >> "$PATH/known_hosts"

ssh -A -tt -o 'StrictHostKeyChecking=no' $USER@$HOST "$*"