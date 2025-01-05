# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation
export OSH='/data/data/com.termux/files/home/.oh-my-bash'

# Set name of the theme to load
OSH_THEME="powerline"

# Enable case-sensitive completion
OMB_CASE_SENSITIVE="true"

# Enable hyphen-insensitive completion
OMB_HYPHEN_SENSITIVE="false"

# Disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Change how often to auto-update (in days)
export UPDATE_OSH_DAYS=13

# Disable colors in ls
DISABLE_LS_COLORS="true"

# Disable auto-setting terminal title
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Ignore untracked files in the repository
SCM_GIT_IGNORE_UNTRACKED="true"

# Change the command execution time stamp shown in the history command output
HIST_STAMPS='yyyy-mm-dd'

# Enable bash completion
if [ -f /etc/profile.d/bash_completion.sh ]; then
   . /etc/profile.d/bash_completion.sh
fi

# Set OMB to use sudo
OMB_USE_SUDO=true

# Enable display of Python virtualenv and condaenv
OMB_PROMPT_SHOW_PYTHON_VENV=true

# Define completions to load
completions=(
  git
  ssh
)

# Define aliases to load
aliases=(
  general
)

# Define plugins to load
plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh

# User configuration
export LANG=en_US.UTF-8

alias bashconfig="micro ~/.bashrc"
alias ohmybash="micro ~/.oh-my-bash"
alias gi="git init"
alias ga="git add *"
alias gc="git commit"
alias gs="git status"
alias gph="git push -u origin main"
alias gpl="git pull -u origin main"
alias gbm="git branch -M main"
alias cat="bat"
alias ls="ls -a"
alias nano="micro"
alias update="apt update && apt upgrade"
alias ghrl="gh repo list"
alias cls="clear"

clear
tmux
figlet Termux
rxfetch
