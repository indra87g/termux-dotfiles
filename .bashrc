user_name="indra87g"
editor="micro"

export GREP_COLOR="1;32"
export MANPAGER="less -R --use-color -Dd+g -Du+b"
export EDITOR=$editor
export SUDO_EDITOR=$editor
export VISUAL="vim"
export USER=$user_name
export ETC="/data/data/com.termux/files/usr/etc"

shopt -s histappend
shopt -s histverify
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

bind 'TAB:menu-complete'
shopt -s extglob
shopt -s autocd

sym=" ✦ "
bar_cr="34"
name_cr="37"
end_cr="37"
dir_cr="36"
PS1='\[\033[0;${bar_cr}m\]┌──(\[\033[1;${name_cr}m\]${user_name}${sym}\h\[\033[0;${bar_cr}m\])-[\[\033[0;${dir_cr}m\]\w\[\033[0;${bar_cr}m\]]
\[\033[0;${bar_cr}m\]└─\[\033[1;${end_cr}m\]\$\[\033[0m\] '

if [[ -x /usr/bin/dircolors ]]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip -color'
fi

--() {
  cd -
}

alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias lm='ls | more'
alias ll='ls -lFh'
alias la='ls -alFh --group-directories-first'
alias l1='ls -1F --group-directories-first'
alias l1m='ls -1F --group-directories-first | more'
alias lh='ls -ld .??*'
alias lsn='ls | cat -n'
alias mkdir='mkdir -p -v'
alias cp='cp --preserve=all'
alias cpv='cp --preserve=all -v'
alias cpr='cp --preserve=all -R'
alias cpp='rsync -ahW --info=progress2'
alias cs='printf "\033c"'
alias q='exit'
alias c='clear'
alias cls='clear && ls'
alias count='find . -type f | wc -l'
alias fbig="find . -size +128M -type f -printf '%s %p\n'| sort -nr | head -16"
alias randir='mkdir -p ./$(cat /dev/urandom | tr -cd 'a-z' | head -c 4)/$(cat /dev/urandom | tr -cd 'a-z' | head -c 4)/'

# memory/CPU
alias df='df -Tha --total'
alias free='free -mt'
alias psa='ps auxf'
alias cputemp='sensors | grep Core'

# applications shortcuts
alias myip='curl -s -m 5 https://ipleak.net/json/'
alias e=$editor
alias p='python3'
alias w3mduck='w3m https://duckduckgo.com'
alias ngrok='/data/data/com.termux/files/home/./ngrok'
alias edit-bashrc=$editor' /data/data/com.termux/files/usr/etc/bash.bashrc'
alias timenow='date +"%T"'
alias datenow='date +"%d-%m-%Y"'
alias untar='tar -zxvf '
alias wget='wget -c '
alias genpass='openssl rand -base64 12'
alias phttp='python -m http.server 8000'
alias kn='python /data/data/com.termux/files/home/keynote/keynote.py' # https://github.com/knightfall-cs/keynote
alias dnstest='while true; do dig +short google.com; sleep 2; done'

if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

# nnn "cd on quit"
n()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNVL ] && [ "${NNNVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
        . "$NNN_TMPFILE"
        rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

echo -e "\e[0;37m"
clear
fastfetch
