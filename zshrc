# name on host in curdir 
PROMPT='%n@%m (%B%~%b) '

# term
export TERM=screen-256color

# sane ls sorting
alias ls='LC_COLLATE="C" ls'

# better man pages
alias man='TERM=xterm-256color man'

# better emacs
alias emacs='TERM=xterm-256color /usr/local/bin/emacs -nw -bg gray00'

# VBoxManage without the camel case bullshit
alias vbox='VBoxManage'

# go
export GOPATH=$HOME/Code/go
GOBIN=/usr/local/go/bin

# npm
NPMBIN=$HOME/.npm-global/bin

# my bin
MYBIN=$HOME/Apps/bin

# bins
export PATH=$PATH:$MYBIN:$NPMBIN:$GOBIN:$GOPATH/bin

# turn off lesshst
export LESSHISTFILE=-

# actual zsh stuff
HISTFILE=
zstyle ':completion:*' special-dirs true
autoload -Uz compinit
compinit
