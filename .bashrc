source /data/data/com.termux/files/usr/etc/bash_completion

PS1="\[\e[1;32m\]\u@\h \[\e[1;34m\]\w\[\e[0m\]\$ "

alias cat='bat'
alias gs='git status'
alias ga='git add'
alias gc='git commmit'
alias gph='git push -u origin main'
alias gpl='git pull -u  origin main'
alias gbm='git branch -m main'
alias grep='grep --color=auto'
alias ls='ls -a'
alias home='cd $HOME'

clear
tmux
figlet Termux
rxfetch
