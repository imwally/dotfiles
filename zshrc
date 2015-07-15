# name on host in curdir 
PROMPT='%B%n%b@%B%m%b (%B%~%b) '

# term
export TERM=screen-256color

# sane ls sortin
export LC_ALL=C

# aliases
alias l="ls -l"
alias ll="ls -laF"
alias ik="open -a /Volumes/IronKey/IronKey.app"

# little programs
pkg_find() { 
	curl -s ftp://ftp.openbsd.org/pub/OpenBSD/snapshots/packages/amd64/ \
	| grep -i "$*" | awk '{print $9}'; 
}

# Go
export GOPATH=$HOME/code/go/
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin:$HOME/bin

# PKG_PATH
PKG_PATH=ftp://ftp.openbsd.org/pub/OpenBSD/snapshots/packages/amd64/
export PKG_PATH

# turn off lesshst
export LESSHISTFILE=-

# actual zsh stuff
HISTFILE=
zstyle ':completion:*' special-dirs true
autoload -Uz compinit
compinit

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
