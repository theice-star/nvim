
" __  __       _   _                 _           
"|  \/  |_   _| \ | | ___  _____   _(_)_ __ ___  
"| |\/| | | | |  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
"| |  | | |_| | |\  |  __/ (_) \ V /| | | | | | |
"|_|  |_|\__, |_| \_|\___|\___/ \_/ |_|_| |_| |_|
"        |___/                                   
" Author: @TheIce-Star

set nocompatible

let $VIM_PATH = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')
let $THINKVIM = expand($HOME.'/.thinkvim.d/')

" set the user config file
let s:user_init_config = expand($THINKVIM.'/init.vim')

" Disable vim distribution plugins
let g:loaded_gzip = 1
let g:loaded_tar = 1
let g:loaded_tarPlugin = 1
let g:loaded_zip = 1
let g:loaded_zipPlugin = 1

let g:loaded_getscript = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_vimball = 1
let g:loaded_vimballPlugin = 1

let g:loaded_matchit = 1
let g:loaded_matchparen = 1
let g:loaded_2html_plugin = 1
let g:loaded_logiPat = 1
let g:loaded_rrhelper = 1

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1


" Initialize base requirements
if has('vim_starting')
	" Global Mappings "{{{
	" Use spacebar as leader and ; as secondary-leader
	" Required before loading plugins!
	let g:mapleader="\<Space>"
	let g:maplocalleader=';'

	" Release keymappings prefixes, evict entirely for use of plug-ins.
	nnoremap <Space>  <Nop>
	xnoremap <Space>  <Nop>
	nnoremap ,        <Nop>
	xnoremap ,        <Nop>
	nnoremap ;        <Nop>
	xnoremap ;        <Nop>

endif


" ===
" === Any source
" ===

call utils#source_file($VIM_PATH, 'core/general.vim')
call utils#source_file($VIM_PATH, 'core/plug.vim')
call utils#source_file($VIM_PATH, 'core/plug-config.vim')
call utils#source_file($VIM_PATH, 'keybinds/keybinds.vim')
