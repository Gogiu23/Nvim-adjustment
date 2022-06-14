"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2022 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg@outlook.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'

highlight Comment cterm=italic gui=italic
set noexpandtab shiftwidth=4 tabstop=4
syntax enable
set number
" vim:set et sw=2
set mouse=a
highlight Comment cterm=italic gui=italic
set clipboard=unnamedplus
set timeoutlen=50
lua << end
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
