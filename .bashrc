source /data/data/com.termux/files/usr/etc/bash_completion

PS1="\[\e[48;5;208m\]\[\e[38;5;0m\] \u@\h \[\e[1;34m\]\w \[\e[1;33m\]\$(git_branch)\[\e[0m\]\[\e[48;5;208m\]\[\e[38;5;0m\] \t \[\e[0m\] "

git_branch() {
  branch=$(git branch 2>/dev/null | grep '\*' | sed 's/* //')
  if [ ! -z "$branch" ]; then
    echo "($branch)"
  fi
}

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
unset $TMUX
tmux
figlet Termux
rxfetch
