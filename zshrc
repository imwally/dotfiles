# name on host in curdir 
PROMPT='%B%n%b@%B%m%b (%B%~%b) '

# term
export TERM=screen-256color

# sane ls sortin
export LC_ALL=C

# Go
export GOPATH=$HOME/Code/go/
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin:$HOME/Apps/bin

# turn off lesshst
export LESSHISTFILE=-

# actual zsh stuff
HISTFILE=
zstyle ':completion:*' special-dirs true
autoload -Uz compinit
compinit

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
