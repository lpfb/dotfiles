#!/bin/bash

sudo apt-get install python3-dev
sudo apt-get update && sudo apt-get install build-essential

ln -s "$PWD/vimrc" ~/.vimrc

cd
mkdir ~/.vim/bundle -p
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
vim
