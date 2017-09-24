
tmux attach -t perma-session || tmux new-session -s perma-session
alias m16='make -j16'
alias vf='vim $(fzf)'
alias kbits_dl='wget --auth-no-challenge --no-check-certificate --ask-password --user=amurthy'
#Ugly af hack because someone keeps setting this when they're not supposed to
unset JAVA_HOME
