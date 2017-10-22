#!/bin/sh
wal -i "bgs/skyview.jpg" 
walcolors.sh
mpdscribble
polyboot
mpd 
killall i3bar 
notify-send "Startup Script Completed!" "Have fun."
