export GPG_TTY=$(tty)
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home/

export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools/bin:$ANDROID_SDK/platform-tools:$PATH

export PATH="$PATH:$HOME/Library/flutter/bin/"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
