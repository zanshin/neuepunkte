#!/bin/sh

# nameserver="$(cat /etc/resolv.conf | grep nameserver | head -n 1 | awk '{print $2}')"
nameserver="$(grep -E 'nameserver' /etc/resolv.conf | head -n 1 | awk '{print $2}')"

if [ ! -z "$nameserver" ]; then
    echo "DNS: $nameserver"
else
    echo "DNS missing"
fi

