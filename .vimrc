set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'zhou13/vim-easyescape'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kshenoy/vim-signature'
Plugin 'kana/vim-fakeclip'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
au BufNewFile, BufRead *.py *.cpp *.h
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
set encoding=utf-8

"let python_highlight_all=1
let python_highlight_error_highlight=0
syntax on
set nu

set background=dark
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox
let g:airline_theme='powerlineish'
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>
if &term =~ '256color'
	    " Disable Background Color Erase (BCE) so that color schemes
	    "     " work properly when Vim is used inside tmux and GNU screen.
	set t_ut=
endif
set t_Co=256
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/.ycm_extra_conf.py'

set clipboard=unnamedplus
" set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

" set shiftwidth=4    " Indents will have a width of 4

" set softtabstop=4   " Sets the number of columns for a TAB

" set expandtab       " Expand TABs to spaces
