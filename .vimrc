set nocompatible
set noswapfile
set nobackup
set nowritebackup

filetype off 

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'whzup/greent.vim'
call vundle#end()

filetype plugin indent on

" GUI
set guifont=Liberation\ Mono\ Regular\ 11
" colorscheme github
colorscheme greent
:set statusline=%F%m%r%h%w\ [FMT=%{&ff}] 
:set laststatus=2

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set number
:set shiftwidth=4   "4-space-width shift
:set cursorcolumn
:set cursorline

" KEYMAPS
nmap <silent> <C-t> :NERDTreeToggle<CR>
