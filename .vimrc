"call plug#begin('~/.vim/plugged')

"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'preservim/nerdtree' | Plug 'xuyuanp/nerdtree-git-plugin'
"Plug 'ryanoasis/vim-devicons'
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'vim-airline/vim-airline'

"Themes
"Plug 'doums/darcula'
"call plug#end()

if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'typescript-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
        \ 'whitelist': ['typescript', 'typescript.tsx', 'typescriptreact'],
        \ })
endif

syntax enable
colorscheme darcula

autocmd VimEnter * NERDTree

set nu
set re          =0
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set cc          =120
set encoding    =UTF-8
set expandtab
set termguicolors
set guifont=JetBrainsMono_Nerd_Font:h13
