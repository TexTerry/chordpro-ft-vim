"=============================================================================
" File:        chordpro.vim
" Description: A Vim-Plugin for editing ChordPro-Files
" Maintainer:  Marcel Dümmel <marcel.duemmel@aquasign.net>
" License:     BSD3
" Version:     0.1.0
"=============================================================================

function! chordpro#WrapWithDirective(start, end)
	execute "normal! gv"
	let start_line = getpos("'<")[1]
	let end_line = getpos("'>")[1]
	call append(start_line - 1, '{' . a:start . '}')
	call append(end_line + 1, '{' . a:end . '}')
endfunction


function! chordpro#WrapInlineWithDirective(start, end)
	let start_pos = getpos("'<")
	let end_pos   = getpos("'>")

	let line_num = start_pos[1]
	let col_start = start_pos[2]
	let col_end   = end_pos[2]

	let line = getline(line_num)

	let before = strpart(line, 0, col_start - 1)
	let middle = strpart(line, col_start - 1, col_end - col_start + 1)
	let after  = strpart(line, col_end)

	let new_line = before . '{' . a:start . '}' . middle . '{' . a:end . '}' . after

	call setline(line_num, new_line)
endfunction


function! chordpro#ConvertLineToDirective(directive)
	let line = getline('.')
	if line == ''
		call setline('.', '{' . a:directive . ': }')
		call cursor(line('.'), len(a:directive) + 4)
		startinsert
	else
		call setline('.', '{' . a:directive . ': ' . line . '}')
	endif
endfunction


function! chordpro#InsertChordAtCursor()
	let l:input = input("Chord (e.g. am, c7, f#m): ")

	if empty(l:input)
		echo "No chord given."
		return
	endif

	let l:chord = toupper(strpart(l:input, 0, 1)) . strpart(l:input, 1)

	execute "normal! i[" . l:chord . "]"
endfunction


function! chordpro#SelectionToChord()
	normal! gv"zY
	let l:chord = getreg('z')

	execute "normal! gv" . 'c[' . l:chord . ']'
endfunction


