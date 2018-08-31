version 6.0
let g:skip_defaults_vim=1
filetype plugin on
autocmd BufEnter * :syntax sync fromstart
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set nomodeline
set mouse=a
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set number
set mouse=a
set nowrap
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
syn on
set fillchars=vert:\ 
set ai
set ffs=unix,dos
set t_Co=256
colorscheme slate
" vim-plug setup
" see www.vimawesome.com for plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
call plug#end()
" plugin configuration
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1
" auto-open nerd thing
autocmd vimenter * NERDTree
" focus the file being edited
autocmd vimenter * wincmd p
" auto close vim when only nerd thing
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
map <C-n> :NERDTreeToggle<CR>
" let youcompleteme do stuff
let g:ycm_server_python_interpreter='/usr/bin/python'
" vim: set ft=vim :
