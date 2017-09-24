tmux attach -t perma-session || tmux new-session -s perma-session
PATH=$PATH:~/bin
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
alias vf='vim $(fzf)'
[[ -e ~/.custom_script.sh ]] && source ~/.custom_script.sh
