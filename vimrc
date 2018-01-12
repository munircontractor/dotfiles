" Begin .vimrc

if (&term == "iterm") || (&term == "putty")
    set background=dark
endif

syntax on
set nocompatible
set backspace=2
set viminfo='20,\"50
set history=50
set wrapmargin=8
set ruler
set number
set autoindent
set cursorline
set expandtab
set shiftwidth=4
set softtabstop=4

" Use file based indentation
filetype plugin indent on

" Set colorscheme
colorscheme custom

" Function to remove trailing whitespace from a line
" but preserve cursor position after stripping
function! <SID>StripTrailingWhitespaces()
    " Only strip if noStrip is not set
    if exists('b:noStrip')
        return
    endif

    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

" Auto strip trailing whitespace everytime file is written
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
" Do no strip trailing whitespace for markdown files
autocmd FileType markdown let b:noStrip=1

" Set file type for JIRA and Confluence wiki
autocmd BufNewFile,BufRead *.jira,*.confluence :set ft=confluencewiki

" Override settings for indent for C
autocmd FileType c setlocal shiftwidth=8 softtabstop=8 noexpandtab cindent

" Smart home. Smart end not needed since trailing spaces are stripped anyways
noremap <expr> <silent> <Home> col('.') == match(getline('.'), '\S') + 1 ? '0' : '^'
imap <silent> <Home> <C-O><Home>

" End .vimrc

