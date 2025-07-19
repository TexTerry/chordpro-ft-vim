"=============================================================================
" File:        chordpro.vim
" Description: A Vim-Plugin for editing ChordPro-Files
" Maintainer:  Marcel Dümmel <marcel.duemmel@aquasign.net>
" License:     BSD3
" Version:     0.1.0
"=============================================================================

command! ChordproComment     call chordpro#ConvertLineToDirective('c')
command! ChordproTitle       call chordpro#ConvertLineToDirective('title')
command! ChordproSorttitle   call chordpro#ConvertLineToDirective('sorttitle')
command! ChordproSubtitle    call chordpro#ConvertLineToDirective('subtitle')
command! ChordproArtist      call chordpro#ConvertLineToDirective('artist')
command! ChordproComposer    call chordpro#ConvertLineToDirective('composer')
command! ChordproLyricist    call chordpro#ConvertLineToDirective('lyricist')
command! ChordproCopyright   call chordpro#ConvertLineToDirective('copyright')
command! ChordproAlbum       call chordpro#ConvertLineToDirective('album')
command! ChordproYear        call chordpro#ConvertLineToDirective('year')
command! ChordproKey         call chordpro#ConvertLineToDirective('key')
command! ChordproTime        call chordpro#ConvertLineToDirective('time')
command! ChordproTempo       call chordpro#ConvertLineToDirective('tempo')
command! ChordproDuration    call chordpro#ConvertLineToDirective('duration')
command! ChordproCapo        call chordpro#ConvertLineToDirective('capo')
command! ChordproInsertChord call chordpro#InsertChordAtCursor()


nnoremap <buffer> <localleader>c :ChordproComment<CR>
nnoremap <buffer> <localleader>t :ChordproTitle<CR>
nnoremap <buffer> <localleader>x :ChordproArtist<CR>
nnoremap <buffer> <localleader>k :ChordproKey<CR>
nnoremap <buffer> <localleader>m :ChordproTime<CR>
nnoremap <buffer> <localleader>p :ChordproCapo<CR>
nnoremap <buffer> <localleader>a :ChordproInsertChord<CR>

vnoremap <silent> <localleader>c :<C-U>call chordpro#WrapWithDirective('soc', 'eoc')<CR>
vnoremap <silent> <localleader>b :<C-U>call chordpro#WrapWithDirective('sob', 'eob')<CR>
vnoremap <silent> <localleader>v :<C-U>call chordpro#WrapWithDirective('sov', 'eov')<CR>
vnoremap <silent> <localleader>g :<C-U>call chordpro#WrapWithDirective('sog', 'eog')<CR>
vnoremap <silent> <localleader>t :<C-U>call chordpro#WrapWithDirective('sot', 'eot')<CR>
vnoremap <silent> <localleader>h :<C-u>call chordpro#WrapInlineWithDirective('soh', 'eoh')<CR>
vnoremap <silent> <localleader>a :<C-u>call chordpro#SelectionToChord()<CR>








