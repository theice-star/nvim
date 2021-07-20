-- ===
-- === Basic Mappings
-- ===
vim.api.nvim_set_keymap('n', ';', ':', { noremap = true})
-- :nnoremap <silent> ; :

vim.api.nvim_set_keymap('n', '<leader><CR>', ':set hlsearch!<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<c-q>', ':q<CR>', { noremap = true})

vim.api.nvim_set_keymap('n', '<c-s>', ':w<CR>', { noremap = true})



-- ===
-- === Cursor Movement
-- ===
-- New cursor movement (the default arrow keys are used for resizing windows)
--	    ^
--	    K
--      < H   L >
--	    J
--	    v
vim.api.nvim_set_keymap('n', 'K', '5k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'J', '5j', {noremap = true, silent = true})



-- ===
-- === Insert Mode Cursor Movement
-- ===
vim.api.nvim_set_keymap('i', '<C-a>', '<ESC>A', {noremap = true, silent = true})



-- ===
-- === Searching
-- ===

vim.api.nvim_set_keymap('n', '-', 'N', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '=', 'n', {noremap = true, silent = true})



-- ===
-- === Window management
-- ===
-- Use <space> + new arrow keys for moving the cursor around windows
--Tudo
--Tudo
--Tudo
--Tudo
vim.api.nvim_set_keymap('n', '<LEADER>h', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<LEADER>k', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<LEADER>j', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<LEADER>l', '<C-w>l', {noremap = true, silent = true})

-- split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)

vim.api.nvim_set_keymap('n', 'sk', ':set nosplitbelow<CR>:split<CR>:set splitbelow<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'sj', ':set splitbelow<CR>:split<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'sh', ':set nosplitright<CR>:vsplit<CR>:set splitright<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'sl', ':set splitright<CR>:vsplit<CR>', {noremap = true, silent = true})
