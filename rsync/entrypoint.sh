#!/bin/sh -l

set -e

# Authorize SSH Host
mkdir -p /root/.ssh
chmod 0700 /root/.ssh

# Add the keys and set permissions
echo "$PRIVATE" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

# Do
sh -c "rsync --quiet -e 'ssh -o StrictHostKeyChecking=no' -arvc $GITHUB_WORKSPACE/ $USER@$HOST:$HOST_PATH"

# Remove SSH keys
rm -rf /root/.ssh/

# Delete env file
rm .env