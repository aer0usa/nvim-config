setl nospell
setl nowrap
setl tabstop=4
setl shiftwidth=4

let b:vcm_tab_complete = 'javascript'

" Plugins for Javascript
" https://github.com/pangloss/vim-javascript
  " let javascript_enable_domhtmlcss = 1
  let b:javascript_fold = 1
  let g:javascript_plugin_jsdoc = 1
  " g:javascript_continuation
  " Experiment
  " autocmd FileType javascript set foldmethod=syntax
  " let g:javascript_ignore_javaScriptdoc = 1

" Vim-JSX - DEPRECATED
" https://github.com/mxw/vim-jsx
" let g:jsx_ext_required = 0 " Zero allows JSX in normal JS files
  " let g:jsx_pragma_required = 1 " restrict JSX to files with the pre-v0.12 @jsx React.DOM pragma
" javscript-libraries-syntax
" https://github.com/othree/javascript-libraries-syntax.vim
" let g:used_javascript_libs = 'jquery,react'

" vim_jsx_pretty
" https://github.com/MaxMEllon/vim-jsx-pretty
  let g:vim_jsx_pretty_colorful_config = 1 " default 0

" Surround for Javascript
  " Block comment on k for Komment
  let b:surround_107 = "/*\r*/"
  " Auto Indent see :help surround-issues
  let b:surround_indent = 0

" Run this js file in nodejs
noremap <Leader>n :!node %<CR>

" 'komment': a macro to insert // comments at the beginning of each selected line. The :noh removes the search highlights after.
noremap <Leader>k :s/^\([ ]*\)/\1\/\/ /<CR>:noh<CR>
" 'unkomment': a macro to remove // comments at the beginning of each selected line. The :noh removes the search highlights after.
noremap <Leader>u = :s/^\([ ]*\)\/\/ /\1/<CR>:noh<CR>
