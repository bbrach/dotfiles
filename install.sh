#!/bin/bash

# TODO Compton ranger
# TODO i3 config.fish if wsl
# TODO fishermen
# TODO version wsl vbs script

# automount

#sudo ./installRoot.sh

yay -S fortune tig --noconfirm

./fonts/install.sh

git clone https://github.com/oh-my-fish/oh-my-fish.git 

export VISUAL=nvim
export EDITOR="$VISUAL"

ln -s ~/.local/share/fonts ~/.fonts

ln -s `pwd`/i3 ~/.i3
ln -s `pwd`/termite ~/.config/termite
ln -s `pwd`/nvim ~/.config/nvim
ln -s `pwd`/i3status ~/.config/i3status
ln -s `pwd`/ranger ~/.config/ranger
ln -s `pwd`/nvimShare ~/.local/share/nvim
ln -s `pwd`/fish ~/.config/fish

 ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

nvim +PlugInstall +qall
