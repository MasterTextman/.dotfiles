#!/bin/sh

NAME="$1"
wal -g -b "#1a1a1a" -i $NAME && feh --bg-fill $NAME
