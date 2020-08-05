#!/bin/sh

public_ip=$(curl -s https://api.ipify.org)
private_ip=$(ip a | grep 192.168.4 | awk '{print $2}')

ip_addresses=$(echo -e "$public_ip\n$private_ip")

if [ ! -z "$ip_addresses" ]; then
  echo -e "tooltip-format-wifi: {essid} ({signalStrength}%)\n$ip_addresses\"
else
    echo "tooltip-format-wifi=DNS missing"
fi

