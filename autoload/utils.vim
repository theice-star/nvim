function utils#Complete()
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
