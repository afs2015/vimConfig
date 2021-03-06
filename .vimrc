" Indenting for .js, .html, .css
au BufNewFile, BufRead *.js, *.html, *.css set tabstop=2 softtabstop=2 set shiftwidth=2

" Indenting for Python
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent

" utf-8
set encoding=utf-8      " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" Line Numbers
set nu

" Flags Extraneous Whitespace
au BufRead, BufNewFile *.py, *.c, *.h match BadWhiteSpace /\s\+$/

" Use UNIX (\n) line endings.
set ff=unix

execute pathogen#infect()
syntax enable
filetype plugin indent on

" Colorscheme
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" Misc Commands
autocmd BufWritePre * :%s/[\r \t]\+$//e "Automatically remove trailing whitespace when saving
autocmd BufWritePost .vimrc :so ~/.vimrc "Automatically source vimrc (avoid restarting vim)
