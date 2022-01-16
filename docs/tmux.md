#!/usr/bin/env zsh

tmux_session=$((1 + RANDOM % 100))
tmux attach -t ${tmux_session:-1} || tmux new -s ${tmux_session:-1}
