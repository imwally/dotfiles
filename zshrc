# name on host in curdir 
PROMPT='%B%n%b@%B%m%b (%B%~%b) '

# term
export TERM=screen-256color

# sane ls sortin
export LC_ALL=C

# better man pages
alias man='TERM=xterm-256color COLUMNS=80 man'

# Go
export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin:$HOME/Apps/bin

# turn off lesshst
export LESSHISTFILE=-

# actual zsh stuff
HISTFILE=
zstyle ':completion:*' special-dirs true
autoload -Uz compinit
compinit
