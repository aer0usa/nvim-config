" VimPlug:
call plug#begin('~/.vim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'ajh17/vimcompletesme'
  Plug 'aklt/plantuml-syntax'
  Plug 'godlygeek/tabular'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'nlknguyen/papercolor-theme'
  Plug 'othree/javascript-libraries-syntax'
  Plug 'pangloss/vim-javascript'
  Plug 'raimondi/delimitmate'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/syntastic'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()
" :source %
" :PlugInstall

" Fundamental settings
  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
  set fileformat=unix
  set fileformats=unix,dos,mac
  filetype on
  filetype plugin on
  filetype plugin indent on
  syntax on
" Some useful settings
  set smartindent
  set expandtab         "tab to spaces
  set tabstop=2         "the width of a tab
  set shiftwidth=2      "the width for indent
  set foldenable
  set foldmethod=indent "folding by indent
  set foldlevel=99
  set ignorecase        "ignore the case when search texts
  set smartcase         "if searching text contains uppercase case will not be ignored
" Lookings
  set showtabline=1    "show tab line only if there is more than one tab
  set number           "line number
  set relativenumber   "line number relative to cursor
  set scrolloff=3      "Set 3 lines to the cursor - when moving vertically using j/k
  set sidescroll=20    "The minimal number of columns to scroll horizontally.
  set sidescrolloff=20 "The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set.
  set cursorline       "hilight the line of the cursor
  " set cursorcolumn     "hilight the column of the cursor
  set nowrap           "no line wrapping
  colorscheme PaperColor
  set background=dark
  " change the color of chars over the width of 80 into blue
  " (uncomment to enable it)
  "au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" ------------------------------------------------------------
" Airline
  let g:airline_theme='papercolor'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#formatter = 'default'
" ------------------------------------------------------------
" DelimitMate
  let delimitMate_expand_cr = 1
  let delimitMate_expand_space = 1
  let delimitMate_jump_expansion = 1
" ------------------------------------------------------------
" Syntastic
" https://github.com/scrooloose/syntastic
" :help syntastic
  " set statusline+=%#warningmsg#
  " set statusline+=%{SyntasticStatuslineFlag()}
  " set statusline+=%*
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 0
  let g:syntastic_check_on_wq = 0
  let g:syntastic_echo_current_error = 1
  let g:syntastic_javascript_checkers = ["eslint"]
  let g:syntastic_xml_checkers = ["xmllint"]
  let g:syntastic_qml_checkers = ["qmllint"]
  let g:syntastic_markdown_checkers = ["proselint"]
  let g:syntastic_syntastic_mode_map = { "mode": "passive", "active_filetypes": ['js', 'jsx', 'xml', 'qml', 'plantuml'], "passive_filetypes": ['css', 'markdown'] }
  " let g:syntastic_php_checkers = ["php"]
  " let g:syntastic_javascript_jslint_browser = "true"
  " let g:syntastic_javascript_jslint_for = "true"
  " let g:syntastic_javascript_jslint_this = "true"
  " let g:syntastic_javascript_jslint_multivar = "true"
  " let g:syntastic_javascript_jslint_devel = "true"
" End Syntastic
" ------------------------------------------------------------
" NERDTree
  nmap <C-n> :NERDTreeToggle<CR>
  let g:NERDTreeQuitOnOpen = 1
" EndNERDTree

" Lorem Ipsum in register 'l': "lp
let @l = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

"if has("gui_running")
"  source ~/.config/nvim/gui-init.vim
"endif
