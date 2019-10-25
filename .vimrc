set nocompatible
set noswapfile
set nobackup
set nowritebackup

filetype off 

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vhdirk/vim-cmake'
Plugin 'endel/vim-github-colorscheme'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'lyuts/vim-rtags'
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

"rtags
au FileType cpp noremap <buffer> <Leader>ri :call rtags#SymbolInfo()<CR>
au FileType cpp noremap <buffer> <Leader>rj :call rtags#JumpTo(g:SAME_WINDOW)<CR>
au FileType cpp noremap <buffer> <Leader>rJ :call rtags#JumpTo(g:SAME_WINDOW, { '--declaration-only' : '' })<CR>
au FileType cpp noremap <buffer> <Leader>rS :call rtags#JumpTo(g:H_SPLIT)<CR>
au FileType cpp noremap <buffer> <Leader>rV :call rtags#JumpTo(g:V_SPLIT)<CR>
au FileType cpp noremap <buffer> <Leader>rT :call rtags#JumpTo(g:NEW_TAB)<CR>
au FileType cpp noremap <buffer> <Leader>rp :call rtags#JumpToParent(g:NEW_TAB)<CR>
au FileType cpp noremap <buffer> <Leader>rf :call rtags#FindRefs()<CR>
au FileType cpp noremap <buffer> <Leader>rF :call rtags#FindRefsCallTree()<CR>
au FileType cpp noremap <buffer> <Leader>rn :call rtags#FindRefsByName(input("Pattern? ", "", "customlist,rtags#CompleteSymbols"))<CR>
au FileType cpp noremap <buffer> <Leader>rs :call rtags#FindSymbols(input("Pattern? ", "", "customlist,rtags#CompleteSymbols"))<CR>
au FileType cpp noremap <buffer> <Leader>rr :call rtags#ReindexFile()<CR>
au FileType cpp noremap <buffer> <Leader>rw :call rtags#RenameSymbolUnderCursor()<CR>
au FileType cpp noremap <buffer> <Leader>rv :call rtags#FindVirtuals()<CR>
au FileType cpp noremap <buffer> <Leader>rb :call rtags#JumpBack()<CR>
au FileType cpp noremap <buffer> <Leader>rC :call rtags#FindSuperClasses()<CR>
au FileType cpp noremap <buffer> <Leader>rc :call rtags#FindSubClasses()<CR>
au FileType cpp noremap <buffer> <Leader>rd :call rtags#Diagnostics()<CR>


