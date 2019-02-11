#!/bin/sh

HTTP_STATUS=$(curl --write-out %{http_code} --connect-timeout 5 --silent --output /dev/null "${URL}")

if [[ "$HTTP_STATUS" -ne 200 ]] ; then
  exit 1
else
  exit 0
fi