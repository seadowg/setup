#! /bin/bash

cp ~/.bash_profile bash_profile
cp -r ~/Library/Services/* services/
cp ~/Library/Application\ Support/com.mitchellh.ghostty/config.ghostty config.ghostty
mkdir -p prompts && cp ~/.pi/agent/prompts/* prompts/
cp ~/.pi/agent/APPEND_SYSTEM.md SYSTEM_PROMPT.md