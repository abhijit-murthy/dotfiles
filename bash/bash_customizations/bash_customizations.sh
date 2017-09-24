tmux attach -t perma-session || tmux new-session -s perma-session
PATH=$PATH:~/bin
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
alias vf='vim $(fzf)'
[[ -e "~/bash_customizations/custom_script.sh" ]] && source ~/bash_customizations/custom_script.sh

#work stuff move to separate file
export USE_CCACHE=1
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH=/home/local/ANT/amurthy/tools/depot_tools:$BRAZIL_CLI_BIN:$PATH
alias m16='make -j16'
alias kbits_dl='wget --auth-no-challenge --no-check-certificate --ask-password --user=amurthy'
#Ugly af hack because someone keeps setting this when they're not supposed to
unset JAVA_HOME
