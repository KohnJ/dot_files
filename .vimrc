set tabstop=4
set shiftwidth=4
syntax on
colorscheme molokai
set number

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

call plug#begin('~/.vim/plugged') 

Plug 'artur-shaik/vim-javacomplete2'

call plug#end() 

autocmd FileType java setlocal omnifunc=javacomplete#Complete

let g:SuperTabDefaultCompletionType = "context"

highlight Normal ctermbg=none
highlight NonText ctermbg=none



