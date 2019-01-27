#!/bin/sh
set -e
export URL=$*
cd app
sh -c "URL=$* node ."