
vim.api.nvim_command('colorscheme zephyr')

vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_preview_file = '~/.config/nvim/neovim.cat'
vim.g.dashboard_preview_pipeline = 'lolcat'
vim.g.dashboard_preview_file_height = 12
vim.g.dashboard_preview_file_width = 80
require('statusline')
