#!/bin/sh

printf '\033[8;29;252t'
tmux new-session -d -x 252 -y 29

tmux select-layout even-horizontal
tmux split-window -h 

tmux select-layout even-horizontal
tmux split-window -h 

tmux select-layout even-horizontal

tmux send-keys -t 0 'ncmpcpp' Enter
tmux send-keys -t 1 'ncmpcpp' Enter
tmux send-keys -t 2 'ncmpcpp' Enter

tmux send-keys -t 1 '='
tmux send-keys -t 2 '8'

tmux a #
