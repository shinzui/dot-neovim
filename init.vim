scriptencoding utf-8
set encoding=utf-8

set nocompatible

filetype off

if filereadable(expand("~/.config/nvim/bundles.vim"))
source ~/.config/nvim/bundles.vim
endif

set modelines=0
syntax on

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nowrap "don't wrap lines
set tabstop=2 "tab is 2 spaces
set tabstop=2 shiftwidth=2 expandtab
set shiftwidth=2
set softtabstop=2
set expandtab

set history=500

" highlight search result
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault

" Enable tab completion. First tab shows all matches, second tab cycles through them
set wildmenu
set wildmode=list:longest,full

set wildignore+=*.o,*.obj,.git,*.rbc,*.gem,*.zip,*.tar,*.tar.gz
set wildignore+=*.swp,*~
set wildignore+=vendor/rails/**
set wildignore+=vendor/gems/**
set wildignore+=vendor/ruby/**
set wildignore+=vendor/cache/**
set wildignore+=vendor/assets/**
set wildignore+=.bundle/*
set wildignore+=bower_components/*
set wildignore+=node_modules/*
set wildignore+=.sass-cache/*
set wildignore+=public/uploads/**
set wildignore+=doc/yard/**,.yardoc/**
set wildignore+=log/**
set wildignore+=tmp/**

filetype on
filetype indent on
filetype plugin indent on

set smartindent
set autoindent

set number
set relativenumber
set autoread
au FocusGained * :checktime

" Do not force writing modified files to switch buffers
set hidden

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

"Color

set termguicolors
colorscheme nord
let g:nord_italic = 1
let g:nord_comment_brightness = 12
" let g:airline#extensions#tmuxline#enabled = 0
" let g:tmuxline_theme = 'iceberg'


"""Bindings

"Windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"remap Leader
let mapleader = "\<Space>"

"Strip all trailing whitespace
nnoremap <leader>W :%!git stripspace<CR>

"bind control-l to hashrocket
imap <C-l> =><Space>

"save file
nnoremap <Leader>w :w<CR>

"""config

augroup spellcheck
	autocmd!
	autocmd FileType markdown setlocal spell
	autocmd FileType gitcommit setlocal spell
	autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal spell
augroup END

"Enable persistent undo
set undofile
set undodir=~/.local/share/nvim/undo/

"""Plugins
"vimfiler
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0

let g:vimfiler_quick_look_command = 'qlmanage -p'

nmap <silent> - :VimFilerBufferDir <CR>
" set fillchars=vert:│,fold:─
" let g:vimfiler_tree_leaf_icon = "⋮"
let g:vimfiler_tree_opened_icon = "▼"
let g:vimfiler_tree_closed_icon = "▷"
let g:vimfiler_readonly_file_icon = '✗'
let g:vimfiler_marked_file_icon = '✓'

"disable netrw
let g:loaded_netrwPlugin = 1

"choosewin
nmap <Leader>p <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

""fzf
let g:fzf_layout = { 'window': '10split enew' }
nnoremap <silent> <C-t> :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>l :BLines<CR>

""ack
let g:ackprg = 'rg --vimgrep --no-heading'

""easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
nmap <Leader>s <Plug>(easymotion-overwin-f2)
vmap s <Plug>(easymotion-s2)
omap z <Plug>(easymotion-s2)
omap f <Plug>(easymotion-bd-fl)

" smart f and t
omap f <Plug>(easymotion-bd-fl)
xmap f <Plug>(easymotion-bd-fl)
omap F <Plug>(easymotion-Fl)
xmap F <Plug>(easymotion-Fl)
omap t <Plug>(easymotion-tl)
xmap t <Plug>(easymotion-tl)
omap T <Plug>(easymotion-Tl)
xmap T <Plug>(easymotion-Tl)

" hjkl
map ;h <Plug>(easymotion-linebackward)
map ;j <Plug>(easymotion-j)
map ;k <Plug>(easymotion-k)
map ;l <Plug>(easymotion-lineforward)

map <Leader>j <Plug>(edgemotion-j)

""vim-operator-flashy
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

""is.vim & vim-asterisk
map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
map # <Plug>(asterisk-z#)<Plug>(is-nohl-1)
map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)

map n <Plug>(is-nohl)<Plug>(anzu-n-with-echo)
map N <Plug>(is-nohl)<Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

"anzu statusline
set statusline=%{anzu#search_status()}

let g:asterisk#keeppos = 1

""vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='iceberg'

""neoformat
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
autocmd FileType javascript set formatprg=prettier\ --stdin\ --parser\ flow\ --single-quote\ --print-width\ 100\ --no-semi\ --trailing-comma\ es5
autocmd FileType javascript.jsx set formatprg=prettier\ --stdin\ --parser\ flow\ --single-quote\ --print-width\ 101\ --no-semi\ --trailing-comma\ es5
autocmd FileType javascript JsPreTmpl html
autocmd FileType graphql set formatprg=prettier
autocmd FileType json set formatprg=prettier
autocmd FileType yaml set formatprg=pyaml
autocmd FileType toml set formatprg=
autocmd FileType markdown set formatprg=prettier\ --parser\ markdown
let g:neoformat_try_formatprg = 1
let g:neoformat_enabled_javascript = [ 'prettier' ]
let g:neoformat_enabled_terraform = [ 'terraform' ]
let g:neoformat_enabled_handlebars = []
let g:neoformat_enabled_reason = [ 'refmt' ]
let g:neoformat_enabled_html = []
" let g:neoformat_enabled_yaml = []

""vim-js-pretty-template
call jspretmpl#register_tag('gql', 'graphql')

""indentLine
let g:indentLine_enabled = 0
let g:indentLine_char = '▏'

"ale
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0

"""Completions
set omnifunc=syntaxcomplete#Complete

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {}
let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands.reason = ['ocaml-language-server', '--stdio']
let g:LanguageClient_serverCommands.ocaml = ['ocaml-language-server', '--stdio']
let g:LanguageClient_loggingLevel = 'DEBUG'

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<CR>

"Use deoplete.
let g:deoplete#enable_at_startup = 1

inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

inoremap <expr><C-h>
\ deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>
\ deoplete#smart_close_popup()."\<C-h>"

call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])



"vim-emoji
set completefunc=emoji#complete

"neoterm
nnoremap <silent> ,th :call neoterm#close()<cr>
nnoremap <silent> ,tl :call neoterm#clear()<cr>
nnoremap <silent> ,tc :call neoterm#kill()<cr>

if &term == 'screen-256color'
  let g:tmux_navigator_no_mappings = 1
  nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
  nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
  nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
  nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
endif

"rust
let g:rustfmt_autosave = 1
" let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)


" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
