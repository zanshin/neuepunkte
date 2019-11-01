#!/bin/sh

security=$(/usr/lib/update-notifier/apt_check 2>&1 | cut -d ';' -f 2)
updates=$(/usr/lib/update-notifier/apt_check 2>&1 | cut -d ';' -f 1)

case $updates in
  0)
    pending_update=""
    ;;
  1)
    pending_update="1 update"
    ;;
  *)
    pending_update="$updates updates"
    ;;
esac

case $security in
  0)
    pending_security=""
    ;;
  1)
    pending_security="1 security"
    ;;
  *)
    pending_security="$security security"
    ;;
esac

echo "$pending_update : $pending_security"

