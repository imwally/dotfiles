#!/bin/sh

DOTFILES_DIR=~/.dotfiles

rm .zsh_history

if [ -d $DOTFILES_DIR ]; then
        cd $DOTFILES_DIR || exit
        git pull --no-ff
else
        git clone https://github.com/imwally/dotfiles.git $DOTFILES_DIR
        cd $DOTFILES_DIR || exit
        git remote rm origin
        git remote add origin git@github.com:imwally/dotfiles.git
fi

cd ~ || exit
for f in $DOTFILES_DIR/.??*; do
        ln -sf "$f" .
done
