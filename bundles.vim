call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }

"color schemes
Plug 'cocopon/iceberg.vim'

"Navigation
Plug 'junegunn/fzf' | Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'

"windows & tabs
Plug 't9md/vim-choosewin'

"file manager
Plug 'Shougo/unite.vim' | Plug 'Shougo/vimfiler.vim'
Plug 'airblade/vim-rooter'

"Copying & Pasting
Plug 'kana/vim-operator-user' | Plug 'haya14busa/vim-operator-flashy'

"Search
Plug 'haya14busa/is.vim'
Plug 'osyo-manga/vim-anzu'
Plug 'haya14busa/vim-asterisk'
Plug 'brooth/far.vim'

""Utilities
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

Plug 'Shougo/junkfile.vim'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

"commenting
Plug 'tomtom/tcomment_vim'

"undo visualizer
Plug 'simnalamburt/vim-mundo'

"Formatting
Plug 'sbdchd/neoformat'

"Linting
Plug 'w0rp/ale'

"git
Plug 'tpope/vim-fugitive' | Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'lambdalisue/gina.vim'

"JavaScript
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elzr/vim-json'
Plug 'gutenye/json5.vim'
Plug 'Galooshi/vim-import-js'
Plug 'Quramy/vim-js-pretty-template'

"Web development
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax' "css

"react
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'styled-components/vim-styled-components', { 'for': ['javascript', 'javascript.jsx']}

"graphql
Plug 'jparise/vim-graphql'

"handlebars
Plug 'mustache/vim-mustache-handlebars'

"mjml
Plug 'amadeus/vim-mjml'

"TOML
Plug 'cespare/vim-toml'

"jsonnet
Plug 'google/vim-jsonnet'

"Protocol Buffers
Plug 'uarun/vim-protobuf'

"emoji
Plug 'junegunn/vim-emoji'

"Adds :Terraform command to run terraform. Also sets up _.tf, _.tfvars, and
"\*.tfstate files to be highlighted
Plug 'hashivim/vim-terraform', { 'for': ['terraform'] }
Plug 'juliosueiras/vim-terraform-completion', { 'for': ['terraform'] }

"Kubernetes
Plug 'andrewstuart/vim-kubernetes'

"emoji
Plug 'junegunn/vim-emoji'

"Terminal
Plug 'kassio/neoterm'

Plug 'christoomey/vim-tmux-navigator'

call plug#end()
