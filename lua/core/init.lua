vim.o.compatible = false
vim.g.locaded_gzip = 1
vim.g.loaded_gzip = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1
vim.g.loaded_netrwFileHandlers = 1
-- Initialize base requirements
if (vim.api.nvim_eval('has(\'vim_starting\')')) == 1
then
	-- Global Mappings "{{{
	-- Use spacebar as leader and ; as secondary-leader
	-- Required before loading plugins!
        vim.g.mapleader = ' '
        vim.g.maplocalleader = ','
end
-- 
-- Some source
-- 
require('core.general')
require('core.plug')
require('core.plug_config')
require('lsp')

-- Tudo: keybinds.lua 

