#!/bin/sh

#Simple script print current audio/video mpv
musicIcon=""


cmus_current=$(cmus-remote -C status | grep "tag title" |awk '{print $3 $4 $5}')

if [ -z "$cmus_current" ]
then
    echo -n "%{F#FF0000}$musicIcon off%{F-}"
else
    echo -n "%{F#00FF00}$musicIcon $cmus_current%{F-}"
fi
