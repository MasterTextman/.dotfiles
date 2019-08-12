#!/bin/sh
wal -R                                           # Loads previously loaded bg
walcolors.sh                                     # Loads the colors by wal
#mpdscribble                                      # Loads scribbler daemon
#systemctl --user start mpdscribble.service       # Starts scribbler service
#systemctl --user enable mpdscribble.service      # Enables scribbler
#sudo battery-stats-collector & disown            # Starts battery stats
killall polybar                                  # Used to reset polybar
polybar example &> /dev/null & disown
#mpd                                              # Starts music player daemon
#xrandr -s 1600x900                             
#compton & disown                                 # Starts compositor
i3lock -i "bgs/702seconds.png" -e -f             # Starts screen-locker
$HOME/scripts/wifi_init.sh                                     # Initialises wifi
