#!/bin/sh
wal -R 
walcolors.sh
mpdscribble
killall polybar
polybar example & disown
mpd 
xrandr -s 1600x900
compton & disown
i3lock -i "bgs/702seconds.png" -e -f
notify-send "Startup Script Completed!" "Have fun."
