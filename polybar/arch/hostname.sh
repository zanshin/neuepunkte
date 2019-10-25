#!/bin/sh

host="$(hostname)"

if [ ! -z "$host" ]; then
    echo "  $host"
else
    echo "host missing"
fi

