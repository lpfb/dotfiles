# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
 
source ~/.powerlevel10k/powerlevel10k.zsh-theme
 
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# do not store duplications
setopt HIST_IGNORE_DUPS
# ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS
 
# setup autocompletion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
 
setopt prompt_subst
autoload -U colors && colors
local resetColor="%{$reset_color%}"
PS1=""
PS1="%F{cyan}"'($(basename "$CONDA_DEFAULT_ENV")) '"$resetColor"
PS1+='%n%{$reset_color%}@$(scutil --get ComputerName):'"$resetColor"
PS1+=$'\e[38;5;211m$(short_cwd) ';
PS1+=$'\e[38;5;48m[$(git_repo):$(git_branch)] ';
PS1+='$resetColor$ ';
 
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
 
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh
 
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lha'
 
alias grep='grep --color'
alias egrep='egrep --color'
alias ip='ip -c'
alias diff='diff --color'
alias meuip='curl ifconfig.me; echo;'
alias tail='grc tail'
alias ping='grc ping'
alias ps='grc ps'
alias netstat='grc netstat'
alias dig='grc dig'
alias traceroute='grc traceroute'
alias apt='sudo apt'
alias l='ls -lh'
alias la='ls -lha'

alias nv='nvim'
 
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
 
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/user/bin"
export PATH="$PATH:/usr/bin"
