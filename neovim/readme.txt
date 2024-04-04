# Install the folowing packets
1) Run the following commands
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
    sudo rm -rf /opt/nvim
    sudo tar -C /opt -xzf nvim-linux64.tar.gz
2) Edit .zsh or .bashrc addin the following line
    export PATH="$PATH:/opt/nvim-linux64/bin"
3) Install this packet in order to use <space>fg (grep online)
    sudo apt install ripgrep

# Useful neovim shortcuts
- Call vim on terminal:
    nvim
- Inside neovim, open neovim-tree navigation
    C-n
- Inside neovim, grep all project files to find the desired pattern
    <espace>fg 
        Insert the desired pattern
    C-q
        This will create a list of the pattern occurencies in neovim botton
    :cdo s/pattern_old/new_value/gc
        This will change all occurencies of pattern_old for new_value in entires project
        :cdo
            Used to allow us to execute an arbitraty command
