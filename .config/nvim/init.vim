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

" Markdown options
autocmd FileType markdown set textwidth=80

" Auto-open quickfix window if make fails
autocmd QuickFixCmdPost [^l]* cwindow
