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
set wildignore+=_build/**
set wildignore+=_opam/**

filetype on
filetype indent on
filetype plugin indent on

set smartindent
set autoindent

set number
set relativenumber
set autoread
au FocusGained * :checktime

set cursorline

" Do not force writing modified files to switch buffers
set hidden

let g:python2_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

"Color

set termguicolors
colorscheme nord
let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1
" let g:airline#extensions#tmuxline#enabled = 0
" let g:tmuxline_theme = 'iceberg'
"
"
""Preview window
"open at the bottom
" set splitbelow

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

augroup mainautocmd
augroup END

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

nmap <silent> - :Defx -search=`expand('%:p')` `getcwd()`<CR>

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

"disable broken extension
" let g:airline#extensions#languageclient#enabled =0

""neoformat
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
autocmd FileType javascript set formatprg=prettier\ --stdin\ --parser\ flow\ --single-quote\ --print-width\ 100\ --no-semi\ --trailing-comma\ es5
autocmd FileType javascript.jsx set formatprg=prettier\ --stdin\ --parser\ flow\ --single-quote\ --print-width\ 101\ --no-semi\ --trailing-comma\ es5
" autocmd FileType dune set formatprg=dune\ unstable-fmt\ --inplace
autocmd FileType javascript JsPreTmpl
autocmd FileType graphql set formatprg=prettier
autocmd FileType json set formatprg=prettier
autocmd FileType yaml set formatprg=prettier
autocmd FileType toml set formatprg=
" autocmd FileType markdown set formatprg=prettier\ --parser\ markdown
let g:neoformat_try_formatprg = 1
let g:neoformat_enabled_javascript = [ 'prettier' ]
let g:neoformat_enabled_terraform = [ 'terraform' ]
let g:neoformat_enabled_handlebars = []
" let g:neoformat_enabled_reason = [ 'refmt' ]
let g:neoformat_enabled_yaml = [ 'prettier' ]
let g:neoformat_enabled_ocaml = ['ocamlformat']
let g:neoformat_enabled_html = []
let g:neoformat_only_msg_on_error = 1
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
let g:airline#extensions#ale#enabled = 1
let g:ale_ignore_2_4_warnings = 1

"""Completions
set omnifunc=syntaxcomplete#Complete

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {}
let g:LanguageClient_useVirtualText = 0
let g:LanguageClient_useFloatingHover = 1
let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
let g:LanguageClient_serverCommands.reason = ['ocaml-language-server', '--stdio']
let g:LanguageClient_serverCommands.haskell = ['hie-wrapper']
let g:LanguageClient_rootMarkers = ['*.cabal', 'stack.yaml']

let g:LanguageClient_serverCommands.ocaml = ['ocaml-language-server', '--stdio']
let g:LanguageClient_serverCommands.rust = ['rustup', 'run', 'stable', 'rls']

" let g:LanguageClient_loggingLevel = 'DEBUG'
" let g:LanguageClient_loggingFile =  expand('~/.local/share/nvim/LanguageClient.log')
" let g:LanguageClient_serverStderr = expand('~/.local/share/nvim/LanguageServer.log')

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<CR>
" nnoremap <silent> gs :call LanguageClient#textDocument_documentSymbol()<CR>
" nnoremap <silent> re :call LanguageClient#textDocument_references()<CR>
"

"neocomplete
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"Use deoplete.
let g:deoplete#enable_at_startup = 1
" let g:deoplete#auto_complete_delay = 0

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

let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.ocaml = ['buffer', 'around', 'member', 'tag']
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])

"fzf-merlin
au FileType ocaml nnoremap <C-n> <Esc>:FZFMerlinOutline<CR>

"vim-emoji
set completefunc=emoji#complete

"""git
"gina

call gina#custom#command#option('status', '--opener', 'split')
set diffopt+=vertical

"""terminal
"Quit terminal
" tnoremap <Esc> <C-\><C-n>

"navigate from terminal
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

"Verbatim escape
tnoremap <C-v><Esc> <Esc>

"""DEFX
call defx#custom#option('_', {
      \ 'columns': 'icons:git:filename:type',
      \ 'winwidth': 25,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 1,
      \ })

call defx#custom#column('filename', {
      \ 'min_width': 5,
      \ 'max_width': 25,
      \ })

" Close defx if it's the only buffer left in the window
autocmd mainautocmd WinEnter * if &ft == 'defx' && winnr('$') == 1 | q | endif

" Move focus to the next window if current buffer is defx
autocmd mainautocmd TabLeave * if &ft == 'defx' | wincmd w | endif

" Define mappings
autocmd mainautocmd FileType defx do WinEnter | call s:defx_my_settings()
function! s:defx_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>  defx#do_action('drop')
  nnoremap <silent><buffer><expr> l     defx#do_action('drop')
  nnoremap <silent><buffer><expr> vs    defx#do_action('multi', [['drop', 'vsplit'], 'quit'])
  nnoremap <silent><buffer><expr> sp    defx#do_action('multi', [['drop', 'split'], 'quit'])
  nnoremap <silent><buffer><expr> P     defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> K     defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N     defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> dd    defx#do_action('remove_trash')
  nnoremap <silent><buffer><expr> r     defx#do_action('rename')
  nnoremap <silent><buffer><expr> x     defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> yy    defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> ..     defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> q     defx#do_action('quit')

  nnoremap <silent><buffer><expr><nowait> \  defx#do_action('cd', getcwd())
  nnoremap <silent><buffer><expr><nowait> &  defx#do_action('cd', getcwd())
  nnoremap <silent><buffer><expr><nowait> c  defx#do_action('copy')
  nnoremap <silent><buffer><expr><nowait> m  defx#do_action('move')
  nnoremap <silent><buffer><expr><nowait> p  defx#do_action('paste')

  nnoremap <silent><buffer><expr> <C-r>  defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>  defx#do_action('print')

  nnoremap <silent><buffer><expr> S  defx#do_action('toggle_sort', 'Time')

  nnoremap <silent><buffer><expr>w   defx#do_action('call', 'DefxToggleWidth')
endfunction

" Toggle between defx window width and longest line
function! g:DefxToggleWidth(context) abort
  let l:max = 0
  let l:original = a:context['winwidth']
  for l:line in range(1, line('$'))
    let l:len = len(getline(l:line))
    if l:len > l:max
      let l:max = l:len
    endif
  endfor
  execute 'vertical resize '.(l:max == winwidth('.') ? l:original : l:max)
endfunction

" Open file-explorer split with tmux
function! g:DefxTmuxExplorer(context) abort
  if empty('$TMUX') || empty(s:explorer)
    return
  endif
  let l:target = a:context['targets'][0]
  let l:parent = fnamemodify(l:target, ':h')
  echo .l.parent
  echo .s:explorer
  silent execute '!tmux split-window -p 30 -c '.l:parent.' '.s:explorer
endfunction

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

"""Haskell
"Intero
augroup interoMaps
  au!
  " Maps for intero. Restrict to Haskell buffers so the bindings don't collide.

  " Background process and window management
  au FileType haskell nnoremap <silent> <leader>is :InteroStart<CR>
  au FileType haskell nnoremap <silent> <leader>ik :InteroKill<CR>

  " Open intero/GHCi split horizontally
  au FileType haskell nnoremap <silent> <leader>io :InteroOpen<CR>
  " Open intero/GHCi split vertically
  au FileType haskell nnoremap <silent> <leader>iov :InteroOpen<CR><C-W>H
  au FileType haskell nnoremap <silent> <leader>ih :InteroHide<CR>

  " Automatically reload on save
  au BufWritePost *.hs InteroReload
  " au FileType haskell nnoremap <silent> <leader>wr :w \| :InteroReload<CR>

  " Load individual modules
  au FileType haskell nnoremap <silent> <leader>il :InteroLoadCurrentModule<CR>
  au FileType haskell nnoremap <silent> <leader>if :InteroLoadCurrentFile<CR>

  " Type-related information
  au FileType haskell map <silent> <leader>t <Plug>InteroGenericType
  au FileType haskell map <silent> <leader>T <Plug>InteroType
  au FileType haskell nnoremap <silent> <leader>it :InteroTypeInsert<CR>

  " Navigation
  au FileType haskell nnoremap <silent> <leader>gd :InteroGoToDef<CR>

  " Managing targets
  " Prompts you to enter targets (no silent):
  au FileType haskell nnoremap <leader>ist :InteroSetTargets<SPACE>
augroup END

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
