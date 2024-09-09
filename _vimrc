syntax on " highlight syntax
set number " show line numbers
set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch " show search results as you type
set backspace=indent,eol,start  " more powerful backspacing
inoremap jk <ESC> " remap escape to "jk"
let mapleader = "'"
:nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>
