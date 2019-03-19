#!/bin/sh

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
# if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
    updates_aur=0
fi

#updates=$(("$updates_arch" + "$updates_aur"))

if [ "$updates_arch" -gt 0 ]; then
    echo -n "$updates_arch  " 
else
    echo -n "0  "
fi
if [ "$updates_aur" -gt 0 ]; then
    echo -n "$updates_aur"
else
    echo -n ""
fi
