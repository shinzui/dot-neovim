call plug#begin('~/.local/share/nvim/plugged')


"completion
function! InstallDeps(info)
    if a:info.status == 'installed' || a:info.force
        let extensions = [
            \'coc-emmet',
            \'coc-highlight',
            \'coc-html',
            \'coc-css',
            \'coc-yaml',
            \'coc-snippets',
            \'coc-tsserver',
            \'coc-json',
            \'coc-yank',
            \'coc-tailwindcss',
             \'coc-eslint',
            \'coc-rls',
            \'coc-java',
            \'coc-reason'
            \]
        call coc#util#install()
        call coc#util#install_extension(extensions)
    endif
endfunction
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': function('InstallDeps')}

Plug 'antoinemadec/coc-fzf'

"snippets fro coc-snippets
Plug 'honza/vim-snippets'

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
" Plug 'Shougo/unite.vim' | Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'
Plug 'airblade/vim-rooter'

"Copying & Pasting
Plug 'kana/vim-operator-user' | Plug 'haya14busa/vim-operator-flashy'

"Search
Plug 'mileszs/ack.vim'
Plug 'haya14busa/is.vim'
Plug 'osyo-manga/vim-anzu'
Plug 'haya14busa/vim-asterisk'
Plug 'brooth/far.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'dyng/ctrlsf.vim'


""tools
Plug 'kristijanhusak/vim-carbon-now-sh'

""Utilities
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

Plug 'wellle/targets.vim'

Plug 'Yilin-Yang/vim-markbar'

Plug 'Shougo/junkfile.vim'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'liuchengxu/vim-which-key'
Plug 'liuchengxu/vista.vim'

"commenting
Plug 'tomtom/tcomment_vim'

"undo visualizer
Plug 'simnalamburt/vim-mundo'

"Formatting
Plug 'sbdchd/neoformat'
" Plug 'sdiehl/vim-ormolu'

"Linting
" Plug 'w0rp/ale'

"git & github
Plug 'airblade/vim-gitgutter'
Plug 'lambdalisue/gina.vim'
Plug 'rhysd/git-messenger.vim'
Plug 'AGhost-7/critiq.vim'

"JavaScript
" Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elzr/vim-json'
Plug 'gutenye/json5.vim'
Plug 'Galooshi/vim-import-js'
Plug 'Quramy/vim-js-pretty-template'
Plug 'leafgarland/typescript-vim', { 'for': ['typescript'] }

"Web development
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax' "css

"ocaml/reason
Plug 'reasonml-editor/vim-reason-plus'
Plug 'figitaki/vim-dune'
" Plug 'andreypopp/fzf-merlin'

"haskell
" Plug 'parsonsmatt/intero-neovim'
Plug 'neovimhaskell/haskell-vim'
" Plug 'vmchale/hs-conceal'
Plug 'monkoose/fzf-hoogle.vim'

""Purescript
Plug 'purescript-contrib/purescript-vim'

"Dhall
Plug 'vmchale/dhall-vim'

"Nix
Plug 'LnL7/vim-nix'

"react
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'styled-components/vim-styled-components', { 'for': ['javascript', 'javascript.jsx']}

"graphql
Plug 'jparise/vim-graphql'

"rust
Plug 'rust-lang/rust.vim', { 'for': ['rust'] }
Plug 'racer-rust/vim-racer', { 'for': ['rust'] }

"handlebars
Plug 'mustache/vim-mustache-handlebars', { 'for': ['html.handlebars', 'handlebars'] }

"mjml
Plug 'amadeus/vim-mjml', { 'for': ['mjml'] }

"TOML
Plug 'cespare/vim-toml', {'for': ['toml'] }

"Go
Plug 'fatih/vim-go', { 'for' : ['go'] }

"Protocol Buffers
Plug 'uarun/vim-protobuf', { 'for': ['proto'] }

"Adds :Terraform command to run terraform. Also sets up _.tf, _.tfvars, and
"\*.tfstate files to be highlighted
Plug 'hashivim/vim-terraform', { 'for': ['terraform'] }
Plug 'juliosueiras/vim-terraform-completion', { 'for': ['terraform'] }

"Kubernetes
Plug 'andrewstuart/vim-kubernetes'

"Docker
Plug 'ekalinin/Dockerfile.vim', { 'for': ['Dockerfile'] }

"digraphs & unicode
Plug 'chrisbra/unicode.vim'

"databases
Plug 'tpope/vim-db'

"markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

"Terminal
Plug 'kassio/neoterm'

Plug 'christoomey/vim-tmux-navigator'
"Utility to generate color scheme for tmux
Plug 'edkolev/tmuxline.vim'

"Vim util
Plug 'tweekmonster/startuptime.vim'

call plug#end()
