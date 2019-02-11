#!/bin/sh

set -e

STATUS=$(curl -L --max-time 1 -s -o /dev/null -w '%{http_code}' $URL)

if [ $STATUS -eq 200 ]; then
  echo $STATUS
  exit 0
else
  echo "wtf $STATUS"
  exit 1
fi