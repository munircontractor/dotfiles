" My custom color scheme for vim
" Based on the standard elflord color scheme

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "elflord2"
hi Normal                       ctermfg=Blue                        guifg=Cyan                      guibg=Black
hi Comment      term=bold       ctermfg=DarkCyan                    guifg=#80a0ff
hi Constant     term=underline  ctermfg=Magenta                     guifg=Magenta
hi Special      term=bold       ctermfg=DarkMagenta                 guifg=Red
hi Identifier   term=underline  ctermfg=Cyan        cterm=bold      guifg=#40ffff
hi Statement    term=bold       ctermfg=Yellow                      guifg=#aa4444       gui=bold
hi PreProc      term=underline  ctermfg=LightBlue                   guifg=#ff80ff
hi Type         term=underline  ctermfg=LightGreen                  guifg=#60ff60       gui=bold
hi Function     term=bold       ctermfg=White       cterm=bold      guifg=LightGreen    gui=bold
hi Repeat       term=underline  ctermfg=White       cterm=bold      guifg=Yellow        gui=bold
hi Operator                     ctermfg=Red                         guifg=Red
hi Ignore                       ctermfg=black                       guifg=bg
hi Error        term=reverse    ctermfg=White       ctermbg=Red     guifg=White                     guibg=Red
hi Todo         term=standout   ctermfg=Yellow      ctermbg=Black   guifg=Blue                      guibg=Yellow

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String          Constant
hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant
hi link Float           Number
hi link Conditional     Repeat
hi link Label           Statement
hi link Keyword         Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special
