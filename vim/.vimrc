set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" -------------- plugins --------------
" plugin management with vim-plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/taglist.vim'
Plug 'plasticboy/vim-markdown'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'

call plug#end()
" -------------- end plugins --------------


filetype plugin indent on

"Standard options
syntax on
set autoindent
set smartindent
set incsearch
set hlsearch
set ignorecase
set smartcase
set tabstop=4
set sw=4
set expandtab
set hidden
set colorcolumn=100
set mouse=a
set showcmd
set backspace=indent,eol,start "Make work backspace in insert mode in macos
filetype plugin indent on
filetype on
filetype plugin on
if has("macunix")
    set clipboard=unnamed
else
    set clipboard=unnamedplus
endif
"Set leader to ,
:let mapleader = ","
" set 2 spaces for some languages
au FileType yaml setlocal tabstop=2
au FileType yaml setlocal sw=2
au FileType javascript setlocal tabstop=2
au FileType javascript setlocal sw=2
au FileType less setlocal tabstop=2
au FileType less setlocal sw=2
au FileType css setlocal tabstop=2
au FileType css setlocal sw=2
au FileType pug setlocal tabstop=2
au FileType pug setlocal sw=2
au FileType html setlocal tabstop=2
au FileType html setlocal sw=2
au FileType conf setlocal tabstop=2
au FileType conf setlocal sw=2
" Use markdown syntax for .md files
au BufNewFile,BufRead *.md set filetype=markdown
" Just to use templates
:autocmd BufNewFile * silent! 0r ~/.vim/templates/%:e.tpl
" Gnome terminal colors
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
" Gvim stuff
hi Visual term=reverse
hi Visual guibg=blue
hi Folded guibg=brown
" Custom highlight for TagList
highlight default MyTagListFileName guibg=darkblue ctermbg=darkblue
" Undo, history and stuff
set history=1000
set undolevels=1000
set wildignore=*swp,*.pyc
" Spell errors (for spellcheck and others such as pyflakes) with underline
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red gui=undercurl guisp=red
" Python specific settings
au Filetype python setlocal foldmethod=indent
au Filetype python setlocal nofoldenable
let python_highlight_all = 1
" <leader>w to remove trailing whitespace
nmap <leader>w :%s/\s\+$//<CR>:let @/=''<CR>
" <leader>n for :NERDTreeTogle
nmap <leader>N :NERDTreeToggle<CR>
" move throught buffers
map <C-j> :bp<CR>
map <C-k> :bn<CR>
nnoremap <leader>q :bp<CR>:bd #<CR>

" Show trailing whitespaces
hi TrailWhitespace ctermbg=blue guibg=blue
match TrailWhitespace /\s\+$\| \+\ze\t/

" airline stuff
set laststatus=2 "show statusline even when not splitting
let g:bufferline_echo = 0 "bufferline on top
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
