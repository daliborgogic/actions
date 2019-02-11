#!/bin/sh

set -e

STATUS=$(curl -L --max-time 1 -s -o /dev/null -w '%{http_code}' "https://daliborgogic.com/sss")

if [ $STATUS -eq 200 ]; then
  echo $STATUS
else
  echo "wtf $STATUS"
  exit 1
fi