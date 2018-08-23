#!/bin/bash

#Executes operations which require root permissions

pacman -S --noconfirm neovim termite tmux fish lolcat cowsay sl xclip w3m ffmpegthumbnailer

ln -s /usr/bin/nvim /usr/bin/n
