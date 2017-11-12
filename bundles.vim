call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"color schemes
Plug 'cocopon/iceberg.vim'

"Navigation
Plug 'easymotion/vim-easymotion'

"Copying & Pasting
Plug 'kana/vim-operator-user' | Plug 'haya14busa/vim-operator-flashy'

"Search
Plug 'haya14busa/is.vim'
Plug 'haya14busa/vim-asterisk'

call plug#end()
