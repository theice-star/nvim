" ===
" === Install Plugins with Vim-Plug
" ===
call plug#begin('~/.config/nvim/plugged/')
" Pretty Dress
Plug 'ajmwagar/vim-deus'

" hightlight
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Status line
Plug 'theniceboy/eleline.vim'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
call plug#end()



