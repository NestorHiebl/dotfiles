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

syntax on

" Filetype options
autocmd FileType markdown,tex set textwidth=80
autocmd FileType markdown,tex setlocal spell spelllang=en_us

" Auto-open quickfix window if make fails
autocmd QuickFixCmdPost [^l]* cwindow

" Double colon opens the command history
" nnoremap :: q:

" Same logic for search history
" nnoremap // q/
" nnoremap ?? q?
