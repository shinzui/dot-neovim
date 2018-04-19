call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', {
\ 'branch': 'next',
\ 'do': 'bash install.sh',
\ }
Plug 'Shougo/echodoc.vim'

"color schemes
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'

"Navigation
Plug 'junegunn/fzf' | Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'

Plug 'haya14busa/vim-edgemotion'

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
Plug 'chrisbra/NrrwRgn'

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
" Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
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

"ocaml/reason
Plug 'reasonml-editor/vim-reason-plus'
Plug 'juanchanco/vim-jbuilder'

"react
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'styled-components/vim-styled-components', { 'for': ['javascript', 'javascript.jsx']}

"graphql
Plug 'jparise/vim-graphql'

"rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

"handlebars
Plug 'mustache/vim-mustache-handlebars'

"mjml
Plug 'amadeus/vim-mjml'

"TOML
Plug 'cespare/vim-toml'

"Go
Plug 'fatih/vim-go'

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

"databases
Plug 'tpope/vim-db'

"emoji
Plug 'junegunn/vim-emoji'

"Terminal
Plug 'kassio/neoterm'

Plug 'christoomey/vim-tmux-navigator'
"Utility to generate color scheme for tmux
Plug 'edkolev/tmuxline.vim'

call plug#end()
