# name on host in curdir 
PROMPT='%B%n%b@%B%m%b (%B%~%b) '

# term
export TERM=screen-256color

# sane ls sorting
alias ls='LC_COLLATE="C" ls'

# better man pages
alias man='TERM=xterm-256color COLUMNS=80 man'

# go
export GOPATH=$HOME/Code/go

# npm
export NPMBIN=$HOME/.npm-global/bin

# my bin
export MYBIN=$HOME/Apps/bin

# bins
export PATH=$PATH:$MYBIN:$NPMBIN:$GOPATH/bin:/usr/local/go/bin

# turn off lesshst
export LESSHISTFILE=-

# actual zsh stuff
HISTFILE=
zstyle ':completion:*' special-dirs true
autoload -Uz compinit
compinit
