# chordpro-ft-vim

chordpro-ft-vim is a filetype plugin for Vim or Neovim.
It offers convenient methods for editing [ChordPro](https://chordpro.org) files.

If you're looking for syntax highlighting for your ChordPro files,
check out [vim-scripts/chordpro.vim](https://github.com/vim-scripts/chordpro.vim), which is recommended.


## Installation

Installation is easy using your preferred plugin manager.


### Example using vim-plug

Add the following to your `vimrc` or `init.vim`:

    Plug 'TexTerry/chordpro-ft-vim'

To install the plugin, run:

    :PlugInstall

## Usage

chordpro-ft-vim offers a number of new commands and key mappings that simplify
the editing of ChordPro files – for example, inserting chords or managing
metadata.

All key mappings use `<localleader>`. You need to define a localleader in your
`vimrc` or `init.vim` file:

    let maplocalleader = ",,"

This sets the localleader to ",,". Change the keys to your liking.

### Commands in normal mode

The following commands have been implemented so far. 
This project is still in its infancy, so the naming or key mapping will 
certainly change in the future.

| Command              | Function                                                                 | Key Mapping        |
|----------------------|--------------------------------------------------------------------------|--------------------|
| ChordproComment      | Insert a comment directive or convert the current line to a comment.     | `<localleader>c`     |
| ChordproTitle        | Insert a title directive or convert the current line to a title.         | `<localleader>t`     |
| ChordproSorttitle    | Insert a sorttitle directive or convert the current line to a sort title.|                    |
| ChordproSubtitle     | Insert a subtitle directive or convert the current line to a subtitle.   |                    |
| ChordproArtist       | Insert an artist directive ot convert the current line accordingly.      | `<localleader>x`     |
| ChordproComposer     | Insert a composer directive or convert the current line accordingly.     |                    |
| ChordproLyricist     | Insert a lyricist directive or convert the current line accordingly.     |                    |
| ChordproCopyright    | Insert a copyright directive or convert the current line accordingly.    |                    |
| ChordproAlbum        | Insert an album directive or convert the current line accordingly.       |                    |
| ChordproYear         | Insert a year directive or convert the current line accordingly.         |                    |
| ChordproKey          | Insert a key directive or convert the current line to a musical key.     | `<localleader>k`     |
| ChordproTime         | Insert a time directive or convert the current line to a time signature. | `<localleader>m`     |
| ChordproTempo        | Insert a tempo directive or convert the current line accordingly.        |                    |
| ChordproDuration     | Insert a duration directive or convert the current line accordingly.     |                    |
| ChordproCapo         | Insert a capo directive or convert the current line accordingly.         | `<localleader>p`     |
| ChordproInsertChord  | Asks for a chord (e.g. `em7`) and inserts it formatted (e.g.  `[Em7])` at the current cursor position.      | `<localleader>a`     |


### Commands in visual mode

The following commands are accessible in visual mode (when you have selected something). 
They can only be used via key mappings.

| Function                                        | Key Mapping       |
|-------------------------------------------------|-------------------|
| Mark selection as verse (`{sov}...{eov}`)         | `<localleader>v`    |
| Mark selection as chorus (`{soc}...{eoc}`)        | `<localleader>c`    |
| Mark selection as bridge (`{sob}...{eob}`)        | `<localleader>b`    |
| Mark selection as grid (`{sog}...{eog}`)          | `<localleader>g`    |
| Mark selection as tab (`{sot}...{eot}`)           | `<localleader>t`    |
| Mark selection as highlighted (`{soh}...{eoh}`) \* | `<localleader>h`    |
| Convert selection to chord                      | `<localleader>a`    |

\* This is an extension to the to the ChordPro-standard in [Songbook](https://www.linkesoft.de/songbook) by [LinkeSOFT](https://www.linkesoft.de/).
