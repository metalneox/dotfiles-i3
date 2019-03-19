#!/usr/bin/env bash

#Env var for automatic polybar configuration

#Monitor
export MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g')
#Netstat current interface connected
export NETSTAT=$(route | grep '^default' | grep -o '[^ ]*$')

#Debug var
#echo $MONITOR
#echo $NETSTAT

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# polybar bottom &
polybar top &

echo "Bars launched..."
