# ~/.bash_aliases

alias ls='ls --color=auto'
alias l='ls -lav --ignore=. --ignore=..'

alias rm='rm -v -r --preserve-root'
alias mkdir='mkdir -p'

alias bat='bat -p'
alias grep='grep --color -n'
alias untar='tar -xvf'
alias vim='nvim'
alias tree='tree -Ca -I .git'
alias feh='feh --draw-filename --on-last-slide hold --scale-down --draw-tinted'

alias gdb='gdb -q -tui'
alias cf='clang-format --verbose -i'
alias make='make -j'

alias py='python3'
alias fx='firefox'
alias lgit='lazygit'