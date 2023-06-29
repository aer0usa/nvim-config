" Vim Markdown
  let g:markdown_fenced_languages = ['html', 'python', 'plantuml', 'bash=sh']
" End Vim Markdown

" Open markdown files with Chrome.
" autocmd BufEnter *.md exe 'noremap <F5> :!start C:\Program Files (x86)\Google\Chrome\Application\chrome.exe %:p<CR>'
" Consider that these commands will make a new file in the Working Directory,
" so `:pwd` to see where you are, and `:cd` if necessary.
noremap <F5> :!chromium --incognito %<CR>:p<CR>
noremap <Leader>m :!markdown "%" > "%:p:r"."html"<CR>
noremap <Leader>h :!pandoc --standalone --from=gfm --to=html5 --css="%:p:r"."css" --metadata pagetitle="%:r" "%" -o "%:p:r"."html"<CR>
noremap <Leader>w :!pandoc "%" --from=gfm --to=mediawiki -o "%:p:r"."wiki"<CR>
noremap <Leader>o :!pandoc "%" --from=gfm --to=odt -o "%:p:r"."odt"<CR>
noremap <Leader>d :!pandoc "%" --from=gfm --to=docx -o "%:p:r"."docx"<CR>
noremap <Leader>p :!pandoc "%" --from=gfm -o "%:p:r"."pdf" --metadata pagetitle="%:p:r" --css="%:p:r"."css" --pdf-engine=wkhtmltopdf<CR>
noremap <Leader>v :!okular "%" & <CR>
" %!markdown fname<CR>
" An example of applying a filter:
" p for Plantuml
" noremap <Leader>p :!pandoc --standalone --from=gfm --to=html --filter pandoc-plantuml % -o "%:p:r"."html"<CR>

" Create html, open in browser
noremap <Leader>b :!pandoc --standalone --from=gfm --to=html5 --css="%:p:r"."css" --metadata pagetitle="%:p:r" "%" -o "%:p:r"."html" && firefox --private-window "%:p:r"."html" &<CR>

" Surround for Markdown
  " Curly Quotes on q for Quote
  let b:surround_113 = "“\r”"
  " Set curly quotes as pairs matchable with %
  set matchpairs+=“:”
  set matchpairs+=‘:’
  " Double asterisks on b for Bold
  let b:surround_98 = "**\r**"
  " Single asterisks on b for Emphasis
  let b:surround_101 = "*\r*"
  " Auto Indent see :help surround-issues
  let b:surround_indent = 0

" Example with css
" Notice the "-s" option to make a Standalone html doc, which includes the
" <head> and <body> tags etc
" pandoc -s --from=gfm --to=html -c markdown-styles.css --metadata pagetitle="Eric's Slide Rules" sliderules.md -o sliderules.html

setlocal spell spelllang=en_us "Turn on spellcheck
setl wrap "Wrap long lines
setl tabstop=4
setl shiftwidth=4
setl linebreak "Break lines at word boundaries
setl breakindent "Keep indent of broken lines
setl showbreak=\|\  "Show this at the beginning of wrapped lines
