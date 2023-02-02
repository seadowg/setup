# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
$(/opt/homebrew/bin/brew shellenv)

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export PATH="/usr/local/sbin:$PATH"

# Add python tools to the PATH
export PATH="~/Library/Python/3.9/bin/:$PATH"

eval "$(direnv hook bash)"

alias todo="vim $HOME/Sync/Todo.txt/todo.txt"


# Added by Toolbox App
export PATH="$PATH:/usr/local/bin"


source /Users/seadowg/.docker/init-bash.sh || true # Added by Docker Desktop
