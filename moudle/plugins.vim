" ===
" === Install Plugins with Vim-Plug
" ===
call plug#begin('~/.config/nvim/plugged/')
" Pretty Dress
Plug 'ajmwagar/vim-deus'

" Status line
Plug 'liuchengxu/eleline.vim'
Plug 'ojroques/vim-scrollstatus'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

" File Search
Plug 'junegunn/fzf.vim'

" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }

" Snippets
Plug 'honza/vim-snippets'
" Undo Tree
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
call plug#end()
