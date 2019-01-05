#!/bin/sh
set -e
export URL=$*
sh -c "URL=$* npm start"