#!/bin/sh

set -e

STATUS=$(curl -L --max-time 1 -s -o /dev/null -w '%{http_code}' $URL)

if [ $STATUS -ne 200 ]; then
  exit 1
fi