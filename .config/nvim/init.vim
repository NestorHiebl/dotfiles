set encoding=utf-8
set number
set relativenumber
set scrolloff=7

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set cursorline
set cursorlineopt=number
highlight lineNr ctermfg=grey
highlight CursorLineNR cterm=bold
" Turn off default color scheme on newer Neovim versions
set notermguicolors

syntax on

" Filetype options
autocmd FileType markdown,tex,html set textwidth=80
autocmd FileType markdown,tex,html setlocal spell spelllang=en_us,de

" Auto-open quickfix window if make fails
autocmd QuickFixCmdPost [^l]* cwindow

" Double colon opens the command history
" nnoremap :: q:

" Same logic for search history
" nnoremap // q/
" nnoremap ?? q?
