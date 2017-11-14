call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"color schemes
Plug 'cocopon/iceberg.vim'

"Navigation
Plug 'junegunn/fzf' | Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'

"Copying & Pasting
Plug 'kana/vim-operator-user' | Plug 'haya14busa/vim-operator-flashy'

"Search
Plug 'haya14busa/is.vim'
Plug 'haya14busa/vim-asterisk'

"Utilities
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

"Formatting
Plug 'sbdchd/neoformat'

"JavaScript
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elzr/vim-json'
Plug 'gutenye/json5.vim'

"Web development
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax' "css

"react
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'styled-components/vim-styled-components', { 'for': ['javascript', 'javascript.jsx']}

"graphql
Plug 'jparise/vim-graphql', { 'for': ['graphql'] }

"handlebars
Plug 'mustache/vim-mustache-handlebars'

"mjml
Plug 'amadeus/vim-mjml'

"TOML
Plug 'cespare/vim-toml'

"Protocol Buffers
Plug 'uarun/vim-protobuf'

"Adds :Terraform command to run terraform. Also sets up *.tf, *.tfvars, and
"*.tfstate files to be highlighted
Plug 'hashivim/vim-terraform', { 'for': ['terraform'] }


call plug#end()
