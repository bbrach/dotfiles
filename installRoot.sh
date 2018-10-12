#!/bin/bash

#Executes operations which require root permissions
#TODO add /usr/local/bin

pacman -S --noconfirm neovim termite tmux fish lolcat cowsay sl xclip w3m ffmpegthumbnailer python python-pip trash-cli htop

ln -s /usr/bin/nvim /usr/bin/n
