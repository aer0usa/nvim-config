" Generate a new image with either p or m
noremap <Leader>p :!plantuml % <CR>
noremap <Leader>m :!plantuml % <CR>
" ASCII art
noremap <Leader>t :!plantuml -ttxt % <CR>
" SVG image
noremap <Leader>s :!plantuml -tsvg % <CR>

noremap <Leader>u gg O@startuml<CR><ESC>G o<CR>@enduml<ESC>

setl spell
setl wrap
setl tabstop=4         "the width of a tab
setl shiftwidth=4      "the width for indent
