#! /bin/bash

if [ -d ~/workspace/collect ]; then
  cp ~/workspace/collect/.local_gitignore local_gitignore
  cp ~/workspace/collect/.envrc envrc
  cp ~/workspace/collect/.idea/structuralSearch.xml structuralSearch.xml
fi
