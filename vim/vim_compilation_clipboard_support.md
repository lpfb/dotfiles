# Additional configurations

## Checking support to copy to clipboard
In order to copy vim content data to clipboard it is necessary to check if your current vim version does support this. To check it, run the following command on your linux terminal:
```sh
vim --version | grep xterm_clipboard
```
If the return contains **+xterm_clipboard**, you do have support on you current installation and can copy to clipboard by selecting the desired text portion and pressing **"+y**
But if the return contains **-xterm_clipboard** it means that you do not have support and need to follow the steps described in *Adding copy to clipboard*

## Adding copy to clipboard
In order to add clipboard copy support it's necessary to compile vim with the appropriate flags. To do this, follow the below steps

1. Clone latest version of vim
```sh
git clone https://github.com/vim/vim.git vim_repo
```
1. Install graphical dependencies
```sh
sudo apt-get install xorg-dev
```
1. Configuring vim make to add GUI support and install a complete vim version
```sh
cd vim_repo/
make distclean
./configure --with-x --enable-gui=auto  --with-features=huge
```
1. Build and install vim
```sh
make
sudo make install
```
1. After the installation, run:
```sh
/bin/bash
```
    - This step is necessary to guarantee that the bash will reload vim version.
1. Now run the steps described in *Checking support to copy to clipboard* to check that now vim does support copy to clipboard
