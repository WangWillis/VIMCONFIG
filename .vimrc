" *****************************************************************
" *                       VARIABLES                               *
" *****************************************************************
set nocompatible               " get rid of strict vi compatibility!
set nu                          " line numbering on
set autoindent                  " autoindent on
"set noerrorbells                " bye bye bells :)
set modeline                    " show what I'm doing
set nowrap                      " no wrapping!
set ignorecase                  " search without regards to case
set noshowmode                    " show the mode on the dedicated line (see
set backspace=indent,eol,start  " backspace over everything
set fileformats=unix,dos,mac    " open files from mac/dos
set exrc                        " open local config files
set nojoinspaces                " don't add white space when I don't tell 
set ruler                       " which line am I on?
set showmatch                   " ensure Dyck language
set incsearch                   " incremental searching
set nohlsearch                  " meh
set bs=2                        " fix backspacing in insert mode
set cursorline                  " highlighs current line
set formatoptions+=r            " auto add askerus for comments
au FileType html,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
" Enable arrow keys                    
imap ^[OA <ESC>ki                                    
imap ^[OB <ESC>ji                   
imap ^{OC <ESC>li
imap ^[OD <ESC>hi

" Shows colors of syntax
syntax on                          
        
" Autocomplete paranthesis stuff
inoremap [  []<Esc>i
inoremap []     []
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>0

imap {      {}<Left> 
imap {<CR>  {<CR>}<Esc>O
imap {}     {}

" Smart indent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Line number highlight
highlight LineNr  ctermbg=black

highlight OverLength ctermbg=yellow ctermfg=yellow guibg=yellow
match OverLength /\%81v.\+/
