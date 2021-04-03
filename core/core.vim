" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: @TheIce-Star

" Checkout-list
" vim-esearch
" fmoralesc/worldslice
" SidOfc/mkdx

set nocompatible

let $VIM_PATH = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')
let $THINKVIM = expand($HOME.'/.thinkvim.d')

source $HOME/.config/nvim/core/general.vim
source $HOME/.config/nvim/core/plugins.vim
source $HOME/.config/nvim/core/plugin-config.vim
" ===
" === Basic Mappings
" ===
" Functions
nnoremap r :call Complete()<CR>
function Complete()
	exec "w"
	if &filetype == 'c'
		execute "!gcc % -o $<"
		execute "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		execute "!g++ -std=c++11 % -Wall -o $<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		execute "!javac %"
		execute "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! execute "！".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		execute "MarkdownPreview"
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run
	endif
endfunction
" Set <LEADER> as <SPACE>, ; as :
let mapleader=" "
noremap ; :

" Save & quit
noremap Q :q<CR>
noremap <C-q> :qa<CR>
noremap S :w<CR>

" Open the vimrc file anytime
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>
noremap <LEADER>rv :e .nvimrc<CR>

" Source Nvimrc everywhere
nnoremap <LEADER>R :source $MYVIMRC<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" make Y to copy till the end of the line
nnoremap Y y$

" Indentation
nnoremap < <<
nnoremap > >>

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
nnoremap <LEADER>tt :%s/    /\t/g
vnoremap <LEADER>tt :s/    /\t/g



" ===
" === Cursor Movement
" ===
" New cursor movement (the default arrow keys are used for resizing windows)
"     ^
"     K
" < H   L >
"     J
"     v

" U/E keys for 5 times u/e (faster navigation)
noremap <silent> K 5k
noremap <silent> J 5j

" N key: go to the start of the line
noremap <silent> N 0
" I key: go to the end of the line
noremap <silent> I $



" ===
" === Insert Mode Cursor Movement
" ===
inoremap <C-a> <ESC>A



" ===
" === Searching
" ===
noremap - N
noremap = n



" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>k <C-w>k
noremap <LEADER>j <C-w>j
noremap <LEADER>h <C-w>h
noremap <LEADER>l <C-w>l
noremap qf <C-w>o

" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sj :set splitbelow<CR>:split<CR>
noremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>



" ===
" === Tab Manager
" ===
" Create a new tab with tu
nnoremap tu :tabe<CR>
" Move around tabs with tn and ti
nnoremap tp :-tabnext<CR>
nnoremap tn :+tabnext<CR>
" Move the tabs with tmn and tmi
nnoremap tmn :-tabmove<CR>
nnoremap tmi :+tabmove<CR>
nnoremap tc :tabclose<CR>


" ===
" === Markdown Settings
" ===
" Snippets
source ~/.config/nvim/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell



" Install Plugins with Vim-Plug
source ~/.config/nvim/core/plugins.vim
