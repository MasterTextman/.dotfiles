#!/bin/sh
wal -R 
walcolors.sh
mpdscribble
polyboot
mpd 
xrandr -s 1600x900
notify-send "Startup Script Completed!" "Have fun."
