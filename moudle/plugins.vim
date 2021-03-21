" ===
" === Install Plugins with Vim-Plug
" ===
call plug#begin('~/.config/nvim/plugged/')
" Pretty Dress
Plug 'glepnir/oceanic-material'
" Status line
Plug 'liuchengxu/eleline.vim'
" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

" File Search
Plug 'junegunn/fzf.vim'

" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Snippets
Plug 'honza/vim-snippets'
" Undo Tree
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}


" Word Processing
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Some language 

" HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'elzr/vim-json'
Plug 'neoclide/jsonc.vim'
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'

" Other
Plug 'skywind3000/vim-auto-popmenu' , {'for': ['markdown', 'text', 'vim-plug']}
Plug 'skywind3000/vim-dict', {'for': ['markdown', 'text', 'vim-plug']}
call plug#end()
