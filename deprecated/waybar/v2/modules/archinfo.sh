#!/bin/sh

kernel_version=$(uname -r)
pending_updates=$(cat ~/.updatecount)
reboot_required=$(arch-reboot.sh)
up_time=$(uptime -p)

arch_info=$(echo "kernel: $kernel_version \nupdates: $pending_updates \n$reboot_required \n$up_time")


echo  "{\"tooltip\":\""$arch_info"\"}"

