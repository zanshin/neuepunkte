#!/bin/sh

public_ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
private_ip=$(hostname -i | awk '{print $1}')

# ip_addresses=$(echo "IPs: $public_ip $private_ip")
ip_addresses="IPs: $public_ip $private_ip"

if [ ! -z "$ip_addresses" ]; then
    echo "$ip_addresses"
else
    echo "DNS missing"
fi

