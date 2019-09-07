#!/bin/sh

#echo "%{F#66818b}${daemon}%{F-}"

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
    #echo -n "$updates_arch  " 
    echo -n "$updates_arch %{F#FF0000}%{F-} "
else
    echo -n "0 %{F#00FF00}%{F-} "
fi
if [ "$updates_aur" -gt 0 ]; then
#    echo -n "$updates_aur"
    echo -n "%{F#FFA500}$updates_aur%{F-}"
else
    echo -n "0"
fi

