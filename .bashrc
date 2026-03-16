# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Limits recursive functions, see 'man bash'
[[ -z "$FUNCNEST" ]] && export FUNCNEST=100

# Don't put duplicate lines or lines starting with space in the history
# Set the size of the the history
# See bash(1) for more options
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# The patern "**" used in a pathname expansion context will match all files
# and zero or more directories and subdirectories
shopt -s globstar

# Minor errors in the spelling of a directory component in a cd command will
# be corrected
shopt -s cdspell

# Update PS1
parse_git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]linux\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32m\]\$(parse_git_branch)\[\033[00m\] \$ "

# Use the up and down arrow keys for finding a command in history
# (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

export LANG=en_US.utf8
export EDITOR=vim
export BROWSER='/usr/bin/firefox'

# Color support for less
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# Zoxide
eval "$(zoxide init --cmd cd bash)"

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Postgres
export PGDATA="$HOME/postgres_data"
export PGHOST="/tmp"

# Path

export PATH=$PATH:/usr/local/texlive/2024/bin/x86_64-linux:/var/lib/snapd/snap/bin:/home/swar/.local/bin
export MANPATH=$MANPATH:/usr/local/texlive/2024/texmf-dist/doc/man
export INFOPATH=$INFOPATH:/usr/local/texlive/2024/texmf-dist/doc/info