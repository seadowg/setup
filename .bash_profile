export GPG_TTY=$(tty)
eval "$(rbenv init -)"
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home/
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools/"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
