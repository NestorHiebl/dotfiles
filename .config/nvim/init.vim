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
colorscheme vim
set notermguicolors

syntax on

set statusline=
" Filename
set statusline+=%f
" Modification status
set statusline+=\ %m%r%h
" New section
set statusline+=%=
" File type
set statusline+=%y
" Encoding
set statusline+=\ %{&fileencoding}
" Position in file
set statusline+=\ [%4l/%L]\ %3c\ %3p%%

" Filetype options
autocmd FileType markdown,tex,html set textwidth=90
autocmd FileType markdown,tex,html setlocal spell spelllang=en_us,de
autocmd BufRead,BufNewFile *.pv setfiletype proverif
autocmd BufRead,BufNewFile *.pl setfiletype prolog
autocmd FileType tptp set commentstring=%\ %s

" Auto-open quickfix window if make fails
autocmd QuickFixCmdPost [^l]* cwindow

" Double colon opens the command history
" nnoremap :: q:

" Same logic for search history
" nnoremap // q/
" nnoremap ?? q?

