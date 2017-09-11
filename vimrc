set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tomtom/tcomment_vim'
"Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'morganp/vim-SystemVerilogUVM.vim'
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"------------------------------------------------------------------------------
"                        PLUGINS CONFIGURATIONS
"------------------------------------------------------------------------------

"---------------------------
" Functions
"---------------------------

"Diff
function! DiffToggle()
  if &diff
    diffoff
  else
    diffthis
  endif
endfunction

"gerar o ctags
function! RunCtags()
  let workArea = $XIP_WORKAREA
  execute "!" . "ctags -Re -f " . workArea . "/tags" . " " . workArea
  execute "set tags+=" . workArea . "/tags"
endfunction

let workArea = $XIP_WORKAREA
execute "set tags+=" . workArea . "/tags"


"---------------------------
" General Configurations
"---------------------------

set laststatus=2
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set mouse=n
set ruler
set wrap "Wrap lines
syntax on

"set foldmethod=syntax
":VerilogErrorFormat ncverilog 2


"---------------------------
" Gui options
"---------------------------

set t_Co=256
colorscheme molokai 
highlight ColorColumn ctermbg=0 guibg=red


"---------------------------
"Keymap settings
"---------------------------

map <F4>   :!column -t<CR>
map <F5>   :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
map <F6>   :NERDTreeToggle<CR>
map <F7>   :set nonumber!<CR>
map <F8>   :call DiffToggle()<CR>

map <C-j>   :m .+1<CR>
map <C-k>   :m .-2<CR>

map <Tab>   :tabn<CR>
map <S-Tab> :tabp<CR>
map <C-n>   :tabe<CR>
map <C-w>   :close<CR>
map <C-s>   :w!<CR>

map <C-Left>  :wincmd h<CR>
map <C-Down>  :wincmd j<CR>
map <C-Up>    :wincmd k<CR>
map <C-Right> :wincmd l<CR>

"Habilia o copy e paste
map <C-c> "+y<CR>

" System_Verilog_Plugin
let mapleader = "_"
nnoremap <leader>i :VerilogFollowInstance<CR>
nnoremap <leader>I :VerilogFollowPort<CR>
nnoremap <leader>u :VerilogGotoInstanceStart<CR>

" Run Ctags
nmap <C-F11> :call RunCtags()<CR>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


