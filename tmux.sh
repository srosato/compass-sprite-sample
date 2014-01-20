#!/bin/sh
tmux new -s compass-sample -d

tmux split-window -h
tmux split-window -h

tmux send -t compass-sample.2 'compass watch -c sass/config.rb' ENTER

tmux select-pane -t 0
tmux select-layout 6a99,237x57,0,0{158x57,0,0,78x57,159,0[78x28,159,0,78x28,159,29]}

tmux attach
