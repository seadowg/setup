#! /bin/bash

if [ -d ~/workspace/collect ]; then
  cp ~/workspace/collect/disable-animations.sh disable-animations.sh
  cp ~/workspace/collect/enable-animations.sh enable-animations.sh
  cp ~/workspace/collect/test-lab.sh test-lab.sh
  cp ~/workspace/collect/.local_gitignore .local_gitignore

  cp ~/Checkman/Open\ Data\ Kit Open\ Data\ Kit
fi
