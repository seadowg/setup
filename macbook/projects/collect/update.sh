#! /bin/bash

if [ -d ~/workspace/collect ]; then
  cp ~/workspace/collect/disable-animations.sh disable-animations.sh
  cp ~/workspace/collect/enable-animations.sh enable-animations.sh
  cp ~/workspace/collect/kill-emulator.sh kill-emulator.sh
  cp ~/workspace/collect/.local_gitignore local_gitignore
  cp ~/workspace/collect/.envrc envrc
fi
