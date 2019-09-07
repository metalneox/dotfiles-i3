#!/usr/bin/env sh
DIALOG_RESULT=$(echo -e 'a selected area\ncurrent window\nfull screen\na selected area (copy)\ncurrent window (copy)\nfull screen (copy)' | rofi -dmenu -i -p "[SNAPHOT]" -hide-scrollbar -tokenize -lines 6 -eh 1 -width 25 -location 0 -xoffset 0 -yoffset 0 -padding 20 -disable-history -font "ClearSansMedium 14")

echo "This result is : $DIALOG_RESULT"
sleep 1;

if [ "$DIALOG_RESULT" = "a selected area" ];
then
    exec maim -s pic-selected-"$(date '+%y%m%d-%H%M-%S').png" 
elif [ "$DIALOG_RESULT" = "current window" ];
then
    exec maim -i "$(xdotool getactivewindow)" pic-window-"$(date '+%y%m%d-%H%M-%S').png"
elif [ "$DIALOG_RESULT" = "full screen" ];
then
    exec maim pic-full-"$(date '+%y%m%d-%H%M-%S').png" 
elif [ "$DIALOG_RESULT" = "a selected area (copy)" ];
then
    exec maim -s | xclip -selection clipboard -t image/png 
elif [ "$DIALOG_RESULT" = "current window (copy)" ];
then
    exec maim -i "$(xdotool getactivewindow)" | xclip -selection clipboard -t image/png
elif [ "$DIALOG_RESULT" = "full screen (copy)" ];
then
    exec maim | xclip -selection clipboard -t image/png 
fi


