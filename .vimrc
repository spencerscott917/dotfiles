set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " Vundle plugin managing
Plugin 'VundleVim/Vundle.vim'
" " Autoformatting code
Plugin 'Chiel92/vim-autoformat'
" " Improved python syntax highlighting
Plugin 'vim-python/python-syntax'
" " Automatic code linting
Plugin 'w0rp/ale'
" " A bunch of color schemes
Plugin 'rafi/awesome-vim-colorschemes'
" " Git commands from within vim
Plugin 'tpope/vim-fugitive'
" " filetree split
Plugin 'scrooloose/nerdtree'
Plugin 'lervag/vimtex'
Plugin 'ervandew/supertab'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""Normal vim settings""
set backspace=2
set number
au BufNewFile, *.py:
			\ set colorcolumn=80
			\ set tabstop=4
			\ set softtabstop=4
			\ set shiftwidth=4
			\ set textwidth=79
			\ set expandtab
			\ set autoindent
			\ set fileformat=unix
syntax on

""Autoformatting settings""
let g:formatterpath = ['~/anaconda/bin/black']

""autoformat on save""
au BufWrite *.py :Autoformat

""Python syntax highlighting - still needs work
let g:python_highlight_all = 1
let g:python_highlight_string_format = 1
let g:python_highlight_indent_errors = 1
let g:python_highlight_operators = 1

""Automatic linting
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_format = '%linter%: :%code: %%s'
let g:ale_linters = {'python': ['flake8','mypy']}

"" set syntax highlighting color scheme from vim-awesome-colorschemes
colorscheme afterglow

" " filetree display options
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:vimtex_view_general_viewer = 'open'
let g:vimtex_view_general_options = '-a Skim'

autocmd BufNewFile  *.sh  call    Generate_bash()

function! Generate_bash()
    call append(0, '#!/bin/bash')
endfunction

Bundle 'christoomey/vim-tmux-navigator'

function! WC()
    let filename = expand("%")
    let cmd = "detex " . filename . " | wc -w | tr -d [:space:]"
    let result = system(cmd)
    echo result . " words"
endfunction

command WC call WC()
