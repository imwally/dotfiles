# name on host in curdir 
PROMPT='%B%~%b %# '

# term
export TERM=screen-256color

# sane ls sorting
alias ls='LC_COLLATE="C" ls'

# better man pages
alias man='TERM=xterm-256color man'

# better emacs
alias emacs='TERM=xterm-256color /opt/homebrew/bin/emacs -nw -bg gray00'

# VBoxManage without the camel case bullshit
alias vbox='VBoxManage'

# go
export GOPATH=$HOME/src/go
GOBIN=/usr/local/go/bin

# npm
NPMBIN=$HOME/.npm-global/bin

# rust
RUSTBIN=$HOME/.cargo/bin

# my bin
MYBIN=$HOME/bin

# homebrew sbin
HOMEBREWSBIN=/usr/local/sbin

# homebrew arm
BREWARM=/opt/homebrew/bin

# bins (guard against tmux duplication)
#if [ -z $TMUX ]; then
   export PATH=$BREWARM:$PATH:$HOMEBREWSBIN:$MYBIN:$NPMBIN:$GOBIN:$GOPATH/bin:$RUSTBIN
#fi

# turn off lesshst
export LESSHISTFILE=-

# actual zsh stuff
HISTFILE=
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit
compinit

# set break points (stop at -,/,.) for backwards kill (C-w)
WORDCHARS='*?[]~=&;!#$%^(){}<>'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
