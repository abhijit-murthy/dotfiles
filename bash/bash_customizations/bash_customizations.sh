tmux attach -t perma-session || tmux new-session -s perma-session
PATH=$PATH:~/bin
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
[[ -e ~/.custom_script.sh ]] && source ~/.custom_script.sh
set -o vi
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
