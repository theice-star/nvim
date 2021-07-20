" ===
" === Install Plugins with Vim-Plug
" ===
call plug#begin('~/.config/nvim/plugged/')
" Start time
Plug 'glepnir/dashboard-nvim'

" Pretty Dress
Plug 'glepnir/zephyr-nvim'
Plug 'nvim-treesitter/nvim-treesitter'

" Status line
Plug 'glepnir/spaceline.vim'
Plug 'kyazdani42/nvim-web-devicons'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" File Search
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension', 'on': ['Leaderf']}
Plug 'junegunn/fzf.vim'
" Functions tree
Plug 'liuchengxu/vista.vim', {'on': ['Vista']}

" Snippets
Plug 'honza/vim-snippets'
" Undo Tree
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}

" Word Processing
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'plasticboy/vim-markdown', {'for': ['markdown', 'vim-plug']} " Very good
" Python
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins', 'for': ['python', 'vim-plug']}
" C++
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp', 'vim-plug']}
" Json
" Git
"Other
Plug 'frazrepo/vim-rainbow', {'for': ['c', 'javascript', 'java', 'json', 'vim-plug']}  " rainbow ()
Plug 'lambdalisue/suda.vim'
call plug#end()
