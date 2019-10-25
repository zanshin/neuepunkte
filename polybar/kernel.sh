#!/bin/sh

kernel="$(uname -r)"

if [ ! -z "$kernel" ]; then
    echo "  $kernel"
else
    echo "kernel missing"
fi

