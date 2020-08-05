#!/bin/sh

# public_ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
public_ip=$(curl -s https://api.ipify.org)
# private_ip=$(hostname -i | awk '{print $1}')
private_ip=$(ip a | grep 192.168.4 | awk '{print $2}')

ip_addresses=$(echo "IPs: $public_ip $private_ip")

if [ ! -z "$ip_addresses" ]; then
    echo "$ip_addresses"
else
    echo "DNS missing"
fi

