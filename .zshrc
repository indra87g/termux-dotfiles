export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"

ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export LANG=en_US.UTF-8

alias gi="git init"
alias ga="git add *"
alias gc="git commit"
alias gs="git status"
alias gph="git push -u origin main"
alias gpl="git pull -u origin main"
alias gbm="git branch -M main"
alias cat="bat"
alias ls="eza -l -a --icons"
alias nano="micro"
alias update="apt update && apt upgrade"
alias ghrl="gh repo list"
alias cls="clear"

clear
tmux switch-client
figlet Termux
rxfetch
