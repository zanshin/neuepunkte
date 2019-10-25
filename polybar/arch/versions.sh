#!/bin/sh

i3version="$(i3 -v | awk '{print $1 ": " $3}')"
polybarversion="$(polybar -v | awk 'NR==1{print $1 ": " $2}')"

if [ -z "$i3version" ]; then
    i3version="  i3wm missing"
fi

if [ -z "$polybarversion" ]; then
    polybarversion="  polybar missing"
fi

echo " $i3version  $polybarversion"

