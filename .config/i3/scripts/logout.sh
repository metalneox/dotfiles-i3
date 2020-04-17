#!/bin/sh

DIALOG_RESULT=$(echo -e 'lock\nreboot\npoweroff\nlogout' | rofi -dmenu -i -p "[SYSTEM]" -hide-scrollbar -tokenize -lines 6 -eh 1 -width 25 -location 0 -xoffset 0 -yoffset 0 -padding 20 -disable-history -font "ClearSansMedium 14")

echo "This result is : $DIALOG_RESULT"
sleep 1;

if [ "$DIALOG_RESULT" = "lock" ];
then
    exec betterlockscreen -l dim
elif [ "$DIALOG_RESULT" = "reboot" ];
then
    exec systemctl reboot
elif [ "$DIALOG_RESULT" = "poweroff" ];
then
    exec systemctl poweroff
elif [ "$DIALOG_RESULT" = "logout" ];
then
    i3-msg 'exit'
fi
