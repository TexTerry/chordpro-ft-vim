"=============================================================================
" File:        chordpro.vim
" Description: A Vim-Plugin for editing ChordPro-Files
" Maintainer:  Marcel Dümmel <marcel.duemmel@aquasign.net>
" License:     BSD3
" Version:     0.1.0
"=============================================================================

command! ChordproComment call chordpro#ConvertLineToDirective('c')
command! ChordproTitle   call chordpro#ConvertLineToDirective('title')
command! ChordproAuthor   call chordpro#ConvertLineToDirective('artist')
command! ChordproKey   call chordpro#ConvertLineToDirective('key')
command! ChordproTime  call chordpro#ConvertLineToDirective('time')
command! ChordproCapo   call chordpro#ConvertLineToDirective('capo')
command! ChordproInsertChord call chordpro#InsertChordAtCursor()

nnoremap <buffer> <localleader>c :ChordproComment<CR>
nnoremap <buffer> <localleader>t :ChordproTitle<CR>
nnoremap <buffer> <localleader>x :ChordproAuthor<CR>
nnoremap <buffer> <localleader>k :ChordproKey<CR>
nnoremap <buffer> <localleader>m :ChordproTime<CR>
nnoremap <buffer> <localleader>p :ChordproCapo<CR>
nnoremap <buffer> <localleader>a :ChordproInsertChord<CR>

vnoremap <silent> <localleader>r :<C-U>call chordpro#WrapWithDirective('soc', 'eoc')<CR>
vnoremap <silent> <localleader>b :<C-U>call chordpro#WrapWithDirective('sob', 'eob')<CR>
vnoremap <silent> <localleader>v :<C-U>call chordpro#WrapWithDirective('sov', 'eov')<CR>
vnoremap <silent> <localleader>h :<C-u>call chordpro#WrapInlineWithDirective('soh', 'eoh')<CR>
vnoremap <silent> <localleader>a :<C-u>call chordpro#SelectionToChord()<CR>








