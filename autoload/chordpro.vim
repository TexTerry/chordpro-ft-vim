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
	" Hole die Positionen des markierten Bereichs
	let start_pos = getpos("'<")
	let end_pos   = getpos("'>")

	" Extrahiere Zeile und Spalten
	let line_num = start_pos[1]
	let col_start = start_pos[2]
	let col_end   = end_pos[2]

	" Hole den Inhalt der Zeile
	let line = getline(line_num)

	" Teile die Zeile in drei Teile: vor, markiert, nach
	let before = strpart(line, 0, col_start - 1)
	let middle = strpart(line, col_start - 1, col_end - col_start + 1)
	let after  = strpart(line, col_end)

	" Baue die neue Zeile zusammen
	let new_line = before . '{' . a:start . '}' . middle . '{' . a:end . '}' . after

	" Ersetze die Zeile
	call setline(line_num, new_line)
endfunction


function! chordpro#ConvertLineToDirective(directive)
	let line = getline('.')
	if line == ''
		" Zeile ist leer – Direktive mit Cursor-Position einfügen
		call setline('.', '{' . a:directive . ':}')
		" Cursor hinter den Doppelpunkt setzen und in Insert-Mode wechseln
		call cursor(line('.'), len(a:directive) + 3)
		startinsert
	else
		" Zeile hat Text – direkt formatieren
		call setline('.', '{' . a:directive . ':' . line . '}')
	endif
endfunction


function! chordpro#InsertChordAtCursor()
	" Frage den Benutzer nach einem Akkord in Kleinbuchstaben
	let l:input = input("Akkord (z. B. am, c7, f#m): ")

	" Wenn Eingabe leer ist, abbrechen
	if empty(l:input)
		echo "Kein Akkord eingegeben."
		return
	endif

	" Ersten Buchstaben groß, Rest bleibt wie eingegeben
	let l:chord = toupper(strpart(l:input, 0, 1)) . strpart(l:input, 1)

	" Akkord in ChordPro-Syntax einfügen
	execute "normal! i[" . l:chord . "]"
endfunction


function! chordpro#SelectionToChord()
	normal! gv"zY
	let l:chord = getreg('z')

	" Setze eckige Klammern um den Text
	execute "normal! gv" . 'c[' . l:chord . ']'
endfunction


