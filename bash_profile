[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export PATH="/usr/local/sbin:$PATH"

export PATH="/usr/local/opt/python@3.7/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH"

eval "$(direnv hook bash)"

alias todo="vim $HOME/Sync/Todo.txt/todo.txt"
