#!/bin/bash

ln -s ~/my_git_repos/vim/vimrc ~/.vimrc

cd
mkdir ~/.vim/bundle -p
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
vim
