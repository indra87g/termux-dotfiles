# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme configuration
ZSH_THEME="robbyrussell"

# Enable case-sensitive completion
CASE_SENSITIVE="true"

# Enable hyphen-insensitive completion
HYPHEN_INSENSITIVE="true"

# Auto-update configuration
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

# Miscellaneous settings
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"

# Custom folder for Oh My Zsh
ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins to load
plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration
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
