" ===
" === Basic Mappings
" ===
" Functions
nnoremap r :call utils#Complete()<CR>
" Set <LEADER> as <SPACE>, ; as :
noremap ; :

" Save & quit
noremap <c-q> :q<CR>
noremap <c-s> :w<CR>

" Open the vimrc file anytime
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>

" Source Nvimrc everywhere
nnoremap <silent> <LEADER>R :source $MYVIMRC<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Indentation
nnoremap < :<<
nnoremap > :>>

" Search hightlight
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1


" ===
" === Cursor Movement
" ===
" New cursor movement (the default arrow keys are used for resizing windows)
"	    ^
"	    K
"|< H   L >
"	    J
"	    v

noremap <silent> K 5k
noremap <silent> J 5j



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
noremap <LEADER>h <C-w>h
noremap <LEADER>k <C-w>k
noremap <LEADER>j <C-w>j
noremap <LEADER>l <C-w>l
noremap qf <C-w>o

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
" === Plugin Config
" ===

