#!/usr/local/bin/zsh

echo "Freeing up RAM and cleaning up processes"

processes=(
  ruby
  node
  tmux
  bash
  java
  memcached
  ssh-agent
  Terminal
  crashpad_handler
  redis-server
  "MEGA Folder Sync"
  "CleanMyMac X Menu"
  "CleanMyMac X HealthMonitor"
  "Chromium Helper"
  zsh
)

for p in $processes; do
    echo "Killing $p"
done
killall -9 $processes

echo "DONE"
