"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2022 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg@outlook.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================
"============================================================================
"						  GENERAL CONFIG NVIM								  
						  
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
let g:user42 = 'gdominic'
let g:mail42 = 'gdominic@student.42barcelona.com'
highlight Comment cterm=italic gui=italic
set noexpandtab shiftwidth=4 tabstop=4
syntax enable
set encoding=utf8
" vim:set et sw=2
set mouse=a
highlight Comment cterm=italic gui=italic
set clipboard=unnamedplus
set timeoutlen=50
au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview
set spell
set number
"=========================KEYMAPS============================================
"*************
"MOVING TEXT *
"*************
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv
"***************
"RESIZE WINDOWS*
"***************
nnoremap <C-k>    :resize +2<CR>
nnoremap <C-j>  :resize -2<CR>
nnoremap <C-l>  :vertical resize -2<CR>
nnoremap <C-h> :vertical resize +2<CR>
"==============================================================================
"						AIRLINE CONFIG NEOVIM
"==============================================================================				
let g:airline_section_c = ''
let g:airline_section_y = ''
let g:airline_section_warning = ''
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#battery#enabled = 1
let g:airline_theme='google_dark'
"let g:airline#extensions#coc#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"Enable fugitive
let g:airline##extensions#branch#vcs_checks = ['untracked', 'dirty']
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#use_vcscommand = 1
let g:airline#extensions#branch#empty_message = 'NULL'
let g:airline_symbols.notexists = '🔱'
let g:airline_symbols.dirty = '⚡️'
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#default#section_width = {
	\ 'a': 10,
    \ 'b': 10,
    \ 'z': 45,
    \ }
let g:airline#extensions#default#layout = [
  \ ['a', 'b'],
  \ ['z']
  \ ]
let g:airline#extensions#hunks#enabled = 0
"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"endif
"
"  " unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.colnr = ' ㏇:'
"let g:airline_symbols.colnr = ' ℅:'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.linenr = ' ␊:'
"let g:airline_symbols.linenr = ' ␤:'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.maxlinenr = '㏑'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = 'Ɇ'
"let g:airline_symbols.whitespace = 'Ξ'
"
"" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
"let g:airline_symbols.colnr = ' ℅:'
"let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
"let g:airline_symbols.dirty='⚡'

  " old vim-powerline symbols
""  let g:airline_left_sep = '⮀'
""  let g:airline_left_alt_sep = '⮁'
""  let g:airline_right_sep = '⮂'
""  let g:airline_right_alt_sep = '⮃'
""  let g:airline_symbols.branch = '⭠'
""  let g:airline_symbols.readonly = '⭤'
""  let g:airline_symbols.linenr = '⭡'
"==============================================================================
"						BATTERYSTATUS CONFIG NEOVIM
"==============================================================================
let g:battery#update_tabline = 1    " For tabline.
let g:battery#update_statusline = 1 " For statusline.
let g:battery_watch_on_startup = 1
let g:battery#update_interval = 300
let g:battery#graph_symbol_fill = "🟩"
let g:battery#graph_symbol_null = "⬜️"
let g:battery#symbol_charging = "❤️"
let g:battery#symbol_discharging = "💔"
let g:battery#graph_width = '10'
"*****************************************************************************#
"		      			CONFIG DEVICONS AND NERDTREE						  #
"*****************************************************************************#
let g:webdevicons_enable = 1
let g:webdevicons_enable_startify = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_ctrlp = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
"****************************************************************************#
" 						CONFIG COLORS NERDTREE								 #
"****************************************************************************#
"Disable unmatch folder and files
"let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 0
"let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 0

"Disable Highlighting
"let g:NERDTreeDisableFileExtensionHighlight = 0
"let g:NERDTreeDisableExactMatchHighlight = 0
"let g:NERDTreeDisablePatternMatchHighlight = 0

"Highlight full name not only icons
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"Highlight folders using extact match
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

"Customized colors
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:darkOrange " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*.c$'] = s:lightGreen " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:purple " sets the color for files that did not match any rule
"************************************************************************************************************#

lua << end
						 -- TELESCOPE CONFIG IN LUA
						  
local telescope = require("telescope")
telescope.setup({
        defaults = {
            winblend = 15,
            path_display = { 'smart' },
            dynamic_preview_title = true,
            history = {
                mappings = {
                    i = {
                        ['<C-Down>'] = 'cycle_history_next',
                        ['<C-Up>'] = 'cycle_history_prev',
                    }
                },
                limit = 500
            },
            mappings = {
                i = {
                    ['<C-?>'] = 'which_key',
                }
            },
        }
    })
-- To get telescope-file-browser loaded and working with telescope,
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
end

call SpaceVim#custom#SPC('nnoremap', ['f', 'f'], 'Telescope file_browser grouped=true hidden=true', 'File Browser', 1)
