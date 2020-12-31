#!/bin/sh

rm .zsh_history

if [ -d ~/.dotfiles ]; then
        cd ~/.dotfiles || exit
        git pull --no-ff
else
        git clone https://github.com/imwally/dotfiles.git .dotfiles
        cd ~/.dotfiles || exit
        git remote rm origin
        git remote add origin git@github.com:imwally/dotfiles.git
fi

cd ~ || exit
for f in ~/.dotfiles/.??*; do
        ln -sf "$f" .
done
