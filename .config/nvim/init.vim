function! UseSpaces()
	set tabstop=4
	set shiftwidth=4
	set expandtab
endfunction

au BufNewFile,BufReadPre *.cpp,*.cc,*.h,*.hpp  call UseSpaces() 

call plug#begin(stdpath('data') . '/plugged')

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf'

Plug 'junegunn/fzf.vim'

Plug 'cormacrelf/vim-colors-github'

Plug 'vim-syntastic/syntastic'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

set number
set clipboard+=unnamedplus

colorscheme github
set termguicolors
let g:airline_theme = "github"
let g:airline_powerline_fonts = 1

" NERDTREE-like setup for net rw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "helptags " . g:opamshare .  "/merlin/vim/doc"

let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.ocaml = '[^. *\t]\.\w*|\s\w*|#'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ocaml_checkers = ['merlin']
let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": ["ocaml"],
        \ "passive_filetypes": [] }

