#!/bin/bash

#Executes operations which require root permissions
#TODO add /usr/local/bin

pacman -S --noconfirm neovim termite tmux fish lolcat sl xclip w3m ffmpegthumbnailer python python-pip trash-cli htop feh psmisc

ln -s /usr/bin/nvim /usr/bin/n
