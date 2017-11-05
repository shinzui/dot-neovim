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

" Do not force writing modified files to switch buffers
set hidden


let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'


"""Plugins


"""Completions

" Use deoplete.
let g:deoplete#enable_at_startup = 1
