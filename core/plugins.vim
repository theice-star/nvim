" ===
" === Install Plugins with Vim-Plug
" ===
call plug#begin('~/.config/nvim/plugged/')
" Start time
Plug 'glepnir/dashboard-nvim'
" Pretty Dress
Plug 'ajmwagar/vim-deus'
" Status line
Plug 'glepnir/spaceline.vim'
Plug 'ryanoasis/vim-devicons'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" File Search
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
" File Tree
" Snippets
Plug 'honza/vim-snippets'
" Undo Tree
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}

" Word Processing
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Markdown
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" C++
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp', 'vim-plug']}
"Other
Plug 'frazrepo/vim-rainbow'
call plug#end()
