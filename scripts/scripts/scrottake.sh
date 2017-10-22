#!/bin/bash
scrot -s '%Y-%m-%d-%H:%M:%S_$wx$h_scrot.png' -e 'mv $f ~/Screenshots/' && notify-send "Screenshot saved" "Can be found in ~/Screenshots"
