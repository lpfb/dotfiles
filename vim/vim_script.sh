#!/bin/bash

mv vimrc ~/.vimrc

cd
mkdir ~/.vim/bundle -p
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
vim
