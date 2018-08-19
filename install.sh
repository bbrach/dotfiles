#!/bin/bash

# TODO Compton ranger

sudo ./installRoot.sh

yaourt -S fortune --noconfirm

./fonts/install.sh

git clone https://github.com/oh-my-fish/oh-my-fish.git 

export VISUAL=nvim
export EDITOR="$VISUAL"

ln -s ~/.local/share/fonts ~/.fonts

ln -s ~/git/dotfiles/i3 ~/.i3
ln -s ~/git/dotfiles/termite ~/.config/termite
ln -s ~/git/dotfiles/nvim ~/.config/nvim
ln -s ~/git/dotfiles/i3status ~/.config/i3status
ln -s ~/git/dotfiles/ranger ~/.config/ranger
ln -s ~/git/dotfiles/nvimShare ~/.local/share/nvim
