# Dotfiles
Repository is used to store all dotfiles. The directorys are organized to be used by the toll stow.

# Requisits
sudo apt install stow

# Using
Note: This repo MUST be checkout into HOME directory otherwise will not work.

Linking all dotfiles:
1. Once the repo was checkout out, cd into it
2. Stow all folder: stow git; stow nvim; stow tmux; stow tmux; stow zsh 
3. It`s done!

# zsh Fzf usage
Ref: https://thevaluable.dev/fzf-shell-integration/
CTRL-t	Fuzzy find all files and subdirectories of the working directory, and output the selection to STDOUT.
ALT-c	Fuzzy find all subdirectories of the working directory, and run the command “cd” with the output as argument.
CTRL-r	Fuzzy find through your shell history, and output the selection to STDOUT.
