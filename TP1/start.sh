#! /bin/env bash

if [ $# -lt 1 ]; then
    echo "No args, launching http daemon..."
    exec /usr/sbin/httpd -DFOREGROUND
    exit 0
else
    echo "Executing arguments as command..."
    exec bash -c "$*"
fi