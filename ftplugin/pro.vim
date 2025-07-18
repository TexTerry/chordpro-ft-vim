"=============================================================================
" File:        chordpro.vim
" Description: A Vim-Plugin for editing ChordPro-Files
" Maintainer:  Marcel Dümmel <marcel.duemmel@aquasign.net>
" License:     MIT
" Version:     0.1.0
"=============================================================================

command! ChordproSOC <C-u>call chordpro#WrapWithDirective('soc', 'eoc')
command! ChordproSOB <C-u>call chordpro#WrapWithDirective('sob', 'eob')
command! ChordproSOV <C-u>call chordpro#WrapWithDirective('sov', 'eov')
command! ChordproSOH <C-u>call chordpro#WrapInlineWithDirective('soh', 'eoh')
command! ChordproComment call chordpro#ConvertLineToDirective('c')
command! ChordproTitle   call chordpro#ConvertLineToDirective('t')
command! ChordproAuthor   call chordpro#ConvertLineToDirective('author')
command! ChordproKey   call chordpro#ConvertLineToDirective('key')
command! ChordproTime  call chordpro#ConvertLineToDirective('time')
command! ChordproCapo   call chordpro#ConvertLineToDirective('capo')
command! ChordproInsertChord call chordpro#InsertChordAtCursor()
command! ChordproSelectionToChord call chordpro#SelectionToChord()

nnoremap <silent> <leader>h :Hello<CR>
nnoremap <buffer> <localleader>c :ChordproComment<CR>
nnoremap <buffer> <localleader>t :ChordproTitle<CR>
nnoremap <buffer> <localleader>x :ChordproAuthor<CR>
nnoremap <buffer> <localleader>k :ChordproKey<CR>
nnoremap <buffer> <localleader>m :ChordproTime<CR>
nnoremap <buffer> <localleader>p :ChordproCapo<CR>
vnoremap <buffer> <localleader>r :ChordproSOC<CR>
vnoremap <buffer> <localleader>b :ChordproSOB<CR>
vnoremap <buffer> <localleader>v :ChordproSOV<CR>
vnoremap <buffer> <localleader>h :ChordproSOH<CR>
nnoremap <buffer> <localleader>a :ChordproInsertChord<CR>
vnoremap <silent> <localleader>a :ChordproSelectionToChord<CR>









