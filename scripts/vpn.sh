#!/bin/bash

if [ -d "/proc/sys/net/ipv4/conf/tun0" ]; then
    echo "  VPN"
  elif [ -d "/proc/sys/net/ipv4/conf/wg0" ]; then
    echo "  WG"
  else
    echo ""
fi

