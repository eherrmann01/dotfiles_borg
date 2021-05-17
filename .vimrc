"   ______      _ _      _____     _    _                                               _____      
"  |  ____|    (_) |    |  __ \   | |  | |                                             / ____|     
"  | |__   _ __ _| | __ | |  | |  | |__| | ___ _ __ _ __ _ __ ___   __ _ _ __  _ __   | (___  _ __ 
"  |  __| | '__| | |/ / | |  | |  |  __  |/ _ \ '__| '__| '_ ` _ \ / _` | '_ \| '_ \   \___ \| '__|
"  | |____| |  | |   <  | |__| |  | |  | |  __/ |  | |  | | | | | | (_| | | | | | | |  ____) | |_  
"  |______|_|  |_|_|\_\ |_____(_) |_|  |_|\___|_|  |_|  |_| |_| |_|\__,_|_| |_|_| |_| |_____/|_(_) 
"                                                                                                
" Configuration file for Vim, updated 05/17/2021

" ~/.vimrc
                                                                                                 
syntax on
set number relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smartindent
"set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set path+=**
set hidden
"set colorcolumn=80
"highlight ColorColumn ctermbg=4  
nmap <F6> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
set statusline=
set laststatus=2
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor
set ttymouse=sgr
hi User1 ctermfg=15 ctermbg=4
hi User2 ctermfg=15 ctermbg=4
hi User3 ctermfg=15 ctermbg=4
hi User4 ctermfg=15 ctermbg=4
hi User5 ctermfg=15 ctermbg=4

call plug#begin('~/.vim/plugged')  
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim' 
Plug 'junegunn/goyo.vim' 
Plug 'git@github.com:PotatoesMaster/i3-vim-syntax.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'git@github.com:mattn/emmet-vim.git'
call plug#end()

