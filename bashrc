# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d ~/afs/bin ] ; then
	export PATH=~/afs/bin:$PATH
fi

if [ -d ~/.local/bin ] ; then
	export PATH=~/.local/bin:$PATH
fi

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=vim
#export EDITOR=emacs

# Color support for less
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

alias ls='ls --color=auto'
alias grep='grep --color -n'
alias i3lock='i3lock --image /home/clement.nguyen/afs/.image.png'

alias gcce='gcc -std=c99 -pedantic -Werror -Wall -Wextra -Wvla -fsanitize=address -g3'
alias gccf='gcc -std=c99 -pedantic -Werror -Wall -Wextra -Wvla -g3'
alias gccc='gcc -std=c99 -pedantic -Werror -Wall -Wextra -Wvla -fsanitize=address -g3 -lcriterion'
alias rm='rm -v --preserve-root'
alias clang-format='clang-format --verbose -i'
alias gdb='gdb -q -tui'

PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32m\]\\$\[\e[m\] "

export PGDATA="$HOME/postgres_data"
export PGHOST="/tmp"

alias bk='shutdown 0'

