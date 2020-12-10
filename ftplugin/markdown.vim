" Vim Markdown
  let g:markdown_fenced_languages = ['html', 'python', 'plantuml', 'bash=sh']
" End Vim Markdown

" Open markdown files with Chrome.
" autocmd BufEnter *.md exe 'noremap <F5> :!start C:\Program Files (x86)\Google\Chrome\Application\chrome.exe %:p<CR>'
" Consider that these commands will make a new file in the Working Directory,
" so `:pwd` to see where you are, and `:cd` if necessary.
noremap <F5> :!chromium --incognito %<CR>:p<CR>
noremap <Leader>m :!markdown % > "%:t:r"."html"<CR>
noremap <Leader>h :!pandoc --standalone --from=gfm --to=html5 --css="%:t:r"."css" --metadata pagetitle="%:t:r" % -o "%:t:r"."html"<CR>
noremap <Leader>w :!pandoc % --from=gfm --to=mediawiki -o "%:t:r"."wiki"<CR>
noremap <Leader>o :!pandoc % --from=gfm --to=odt  -o "%:t:r"."odt"<CR>
noremap <Leader>d :!pandoc % --from=gfm --to=docx  -o "%:t:r"."docx"<CR>
noremap <Leader>v :!okular % & <CR>
" %!markdown fname<CR>
" An example of applying a filter:
" p for Plantuml
noremap <Leader>p :!pandoc --standalone --from=gfm --to=html --filter pandoc-plantuml % -o "%:t:r"."html"<CR>

" Example with css
" Notice the "-s" option to make a Standalone html doc, which includes the
" <head> and <body> tags etc
" pandoc -s --from=gfm --to=html -c markdown-styles.css --metadata pagetitle="Eric's Slide Rules" sliderules.md -o sliderules.html

setl spell "Turn on spellcheck
setl wrap "Wrap long lines
setl tabstop=4
setl shiftwidth=4
setl linebreak "Break lines at word boundaries
setl breakindent "Keep indent of broken lines
setl showbreak=\|\  "Show this at the beginning of wrapped lines
