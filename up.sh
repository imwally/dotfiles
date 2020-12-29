#!/bin/sh

rm .zsh_history

if [ -d ~/.dotfiles ]; then
        cd ~/.dotfiles
        git pull --no-ff
        cd ~
else
        git clone https://github.com/imwally/dotfiles.git .dotfiles
fi

for f in ~/.dotfiles/.??*; do
        ln -sf $f .
done
