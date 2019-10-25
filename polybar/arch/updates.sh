#!/bin/sh

if ! updates_arch=$(pacman -Qu 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(checkupdates-aur | wc -l); then
    updates_aur=0
fi

# if ! updates=$(checkupdates+aur 2> /dev/null | wc -l ) ; then
#     updates=0
# fi

updates=$(("$updates_arch" + "$updates_aur"))

case $updates in
  0)
    echo ""
    ;;
  1)
    echo "1 update available"
    ;;
  *)
    echo "$updates updates available"
    ;;
esac

# if [ "$updates" -gt 0 ]; then
#     echo "$updates updates available"
# else
#     echo ""
# fi

