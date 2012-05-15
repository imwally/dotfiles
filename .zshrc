# name@host (current dir)
PROMPT='%n%(!.%F{red}.%F{green})@%f%m (%F{green}%~%f) '

# aliases
alias l="ls -l"
alias ll="ls -laF"
alias ik="open -a /Volumes/IronKey/IronKey.app"
pkg_find() { curl -s ftp://ftp.openbsd.org/pub/OpenBSD/`uname -r`/packages/`uname -m`/ | grep -i "$*" | awk '{print $9}'; }

# duckpan
eval $(perl -I/home/wally/perl5/lib/perl5 -Mlocal::lib)

# PKG_PATH
PKG_PATH=ftp://ftp.openbsd.org/pub/OpenBSD/5.1/packages/amd64/
export PKG_PATH

# The following lines were added by compinstall

zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors true 
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/wally/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=
HISTSIZE=500
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
