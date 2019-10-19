set nocompatible
set runtimepath^=~/.local/share/nvim/plugged/coc.nvim/
filetype plugin indent on
syntax on
set hidden

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <silent><leader>fj <Plug>(coc-float-jump)

