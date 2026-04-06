"Vundle plugins--------------------------------------------------------------

set nocompatible              " be iMproved, required; not vi-compatible
filetype off                  " required until vundle#end()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vim plugins
Plugin 'VundleVim/vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

" Monokai: add repo .vim to runtimepath and use colorscheme monokai (requires ~/.vimrc symlink into this repo or ~/.vim/colors copy)
" let s:vimrc_root = fnamemodify(resolve(expand('<sfile>:p')), ':h')
" let s:repo_vim = s:vimrc_root . '/.vim'
" if isdirectory(s:repo_vim)
"   execute 'set rtp+=' . fnameescape(s:repo_vim)
" endif
"
" set background=dark
" syntax enable
" try
"     colorscheme monokai
" catch
" endtry

" Solarized (dark / light) — run :PluginInstall if the bundle is missing
syntax enable
let g:solarized_termcolors = 256
let g:solarized_termtrans = 0
" Default at startup: dark — use set background=light for Solarized light
set background=dark
try
    colorscheme solarized
catch
    " Run :PluginInstall after adding the Vundle line, or copy colors/solarized.vim into ~/.vim/colors/
endtry

" Toggle Solarized dark <-> light (F5)
nnoremap <silent> <F5> :exe 'set background=' . (&background ==# 'dark' ? 'light' : 'dark')<Bar>colorscheme solarized<CR>

"Indentation-------------------------------------------------------------------
set tabstop=4 " number of spaces per TAB in the file / when displaying tabs
set softtabstop=4 " spaces per tab in insert mode
set expandtab " insert spaces instead of tab characters
set sw=4 " >> and << shift by this many spaces

"UserInterface Configuration --------------------------------------------------
set relativenumber " line numbers relative to cursor
set showcmd " show partial command in the last line of the screen
set cursorline " highlight the line with the cursor
set wildmenu " enhanced command-line completion
set lazyredraw " redraw only when needed (e.g. during macros)
set showmatch " briefly jump to matching bracket


"Folding-----------------------------------------------------------------------
set foldenable " enable folding
set foldlevelstart=10 " start with most folds open
set foldnestmax=10 " max nesting depth for folds
" space toggles fold under cursor
nnoremap <space> za
set foldmethod=indent " fold on indent

"Movement----------------------------------------------------------------------
" move vertically by screen line when text is wrapped
nnoremap j gj
nnoremap k gk
" move to beginning/end of line

set colorcolumn=80
