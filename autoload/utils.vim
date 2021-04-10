
function! utils#source_file(root_path,path, ...)
	" Source user configuration files with set/global sensitivity
	let use_global = get(a:000, 0, ! has('vim_starting'))
	let abspath = resolve(a:root_path . '/' . a:path)
	if ! use_global
		execute 'source' fnameescape(abspath)
		return
	endif

	let tempfile = tempname()
	let content = map(readfile(abspath),
		\ "substitute(v:val, '^\\W*\\zsset\\ze\\W', 'setglobal', '')")
	try
		call writefile(content, tempfile)
		execute printf('source %s', fnameescape(tempfile))
	finally
		if filereadable(tempfile)
			call delete(tempfile)
		endif
	endtry
endfunction

function utils#Complete()
	execute "w"
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
