#!/bin/bash
cd ~

sudo apt-get install python3-dev
sudo apt-get update && sudo apt-get install build-essential

git clone https://github.com/vim/vim.git
cd vim

./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=$(python3-config --configdir) \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local

make VIMRUNTIMEDIR=/usr/local/share/vim/vim90

echo "export VIMRUNTIME=/usr/share/vim/vim90" >> ~/.bashrc

ln -s ~/my_git_repos/vim/vimrc ~/.vimrc

sudo apt-get install python3-dev
sudo apt-get update && sudo apt-get install build-essential

cd
mkdir ~/.vim/bundle -p

cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
vim
